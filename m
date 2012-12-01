Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TepvK-0005Ro-Bm
 for barebox@lists.infradead.org; Sat, 01 Dec 2012 16:28:14 +0000
Received: from cpebcc81008dd2c-cmbcc81008dd29.cpe.net.cable.rogers.com
 ([99.253.156.71]:56349 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
 id 1TepvJ-0006sX-5V
 for barebox@lists.infradead.org; Sat, 01 Dec 2012 11:28:13 -0500
Date: Sat, 1 Dec 2012 11:28:08 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1212011123210.14847@oneiric>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: should i expect trying to mount a cramfs fs to give me a segmentation
 fault?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  again, just following along here:

http://wiki.barebox.org/doku.php?id=user:first_steps

i created a small cramfs filesystem image:

$ ls -l crypto.cramfs
-rw-rw-r-- 1 rpjday rpjday 24576 Dec  1 11:19 crypto.cramfs
$ file crypto.cramfs
crypto.cramfs: Linux Compressed ROM File System data, little endian size 24576 version #2 sorted_dirs CRC 0x969356bc, edition 0, 24
blocks, 13 files
$

started barebox:

$ ./barebox -i crypto.cramfs
add file crypto.cramfs()


barebox 2012.11.0-00305-g159109f #1 Sat Dec 1 07:46:38 EST 2012


Board: sandbox
could not get tap device: Operation not permitted
tap tap0: probe failed: Operation not permitted
malloc space: 0x7f0f1cb3c010 -> 0x7f0f1d33c00f (size  8 MB)
Open /dev/env0 No such file or directory
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...
set parameter: No such device
set parameter: No such device
set parameter: No such device
set parameter: No such device
set parameter: No such device
barebox:/

  then tried to mount it as that page suggests:

barebox:/ mkdir mnt
barebox:/ mount /dev/fd0 cramfs /mnt
Segmentation fault (core dumped)
rpjday@oneiric:~/OE/dist/barebox/git$

  i also tried the variation:

barebox> mount -t cramfs /dev/fd0 /mnt

same result.  help?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
