<?php include "header.php"; ?>
<div class="container">
  <h1 class="well">Thread Baru</h1>
  <?php
    date_default_timezone_set('Asia/Jakarta');
    $tanggal = date("Y-m-d-h:i:s");
    $thread_id = "";
    if(!empty($_SESSION['member_email'])){  
    $query="SELECT member.member_id,member.member_nama,thread.thread_pesan,thread.thread_subjek,thread.tanggal_upload FROM member JOIN thread WHERE member.member_id=thread.thread_id";
    $thread_id = $member_id; 
    } elseif (!empty($_SESSION['admin_email'])) {
    $query="SELECT admin.admin_id,admin.admin_nama,thread.thread_pesan,thread.thread_subjek,thread.tanggal_upload FROM admin JOIN thread WHERE admin.admin_id=thread.thread_id";
    $thread_id = $admin_id;
    }
    //$data=mysqli_fetch_row($res);
    if ($res = mysqli_query($link, $query)){
    // Fetch one and one row
      $no_thread = 1;
      while ($row=mysqli_fetch_row($res))
                    {
                    //printf ("%s\n",$row[0]);
                        // $no_thread = substr($row[0], strpos($row[0], "_") + 1);
                        // $no_thread = (int)$no_thread;
                        $no_thread++;
                    }
                  // Free result set
                  //mysqli_free_result($result);
                }
  ?>
  <div class="col-lg-12 well">
      <form action="proses_save_thread.php" method="POST">
            <div class="form-group">
              <label>Subjek</label>
              <input type="text" name="thread_subjek" placeholder="Masukan subjek yang Anda bahas.." class="form-control" required>
              <input type="text" name="thread_id" type="text" class="form-control" value="<?php echo $thread_id;?>"/>
              <input type="text" name="no_thread" type="text" class="form-control" value="<?php echo $no_thread;?>"/>
              <input type="text" name="thread_datetime" type="text" class="form-control" value="<?php echo $tanggal;?>"/>
            </div>
            <div class="form-group">
                <label for="message">Message</label>
                <textarea id="message" name="thread_pesan" placeholder="Masukan pesan disini.." class="form-control" required></textarea>
            </div>
          <div>
            <br>
            <input type="submit" name="post_thread" class="btn btn-success">
          </div>

      </form>
    </div>
  </div>
</div>

<? php include "footer.php";?>