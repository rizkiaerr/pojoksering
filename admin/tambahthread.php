<?php include "header.php"; ?>
<div class="container">
  <h1 class="well">Thread Baru</h1>
  <?php
    // $member_email = $_SESSION['member_email']; 
    // $query_validasi = mysqli_query($link,"SELECT * FROM member WHERE member_email = '$member_email'");
    // $data_login = mysqli_fetch_assoc($query_validasi);
    // extract($data_login);
    // $data_last=mysqli_query($link,"SELECT member_id FROM member ORDER BY member_id DESC LIMIT 1"); 
    date_default_timezone_set('Asia/Jakarta');
    $tanggal = date("Y-m-d-h:i:s");  
    $query="SELECT buku_id FROM buku_admin ORDER BY buku_id DESC LIMIT 1";
    //$data=mysqli_fetch_row($res);
    if ($res = mysqli_query($link, $query)){
    // Fetch one and one row
      $no_thread = 1;
      while ($row=mysqli_fetch_row($res))
                    {
                    //printf ("%s\n",$row[0]);
                        $no_thread = substr($row[0], strpos($row[0], "_") + 1);
                        $no_thread = (int)$no_thread;
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
              <input type="text" name="member_subjek" placeholder="Masukan subjek yang Anda bahas.." class="form-control" required>
              <input type="hidden" name="member_id" type="text" class="form-control" value="<?php echo $member_id;?>"/>
              <input type="text" name="no_thread" type="text" class="form-control" value="<?php echo $no_thread;?>"/>
              <input type="hidden" name="member_datetime" type="text" class="form-control" value="<?php echo $tanggal;?>"/>
            </div>
            <div class="form-group">
                <label for="message">Message</label>
                <textarea id="message" name="member_pesan" placeholder="Masukan pesan disini.." class="form-control" required></textarea>
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