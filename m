Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22b.google.com ([2a00:1450:4010:c07::22b])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1doU6u-0003zU-6Z
 for barebox@lists.infradead.org; Sun, 03 Sep 2017 12:34:46 +0000
Received: by mail-lf0-x22b.google.com with SMTP id y128so12330366lfd.4
 for <barebox@lists.infradead.org>; Sun, 03 Sep 2017 05:34:23 -0700 (PDT)
Date: Sun, 3 Sep 2017 15:45:44 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20170903154544.08f72353310a25eafa3c341c@gmail.com>
In-Reply-To: <626198c2-50fc-2e86-1abd-8a92cd2d448e@posteo.de>
References: <626198c2-50fc-2e86-1abd-8a92cd2d448e@posteo.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [BUG] TFTP: No access to subdirectories
To: Dennis Menschel <menschel-d@posteo.de>
Cc: barebox@lists.infradead.org

On Sun, 3 Sep 2017 10:49:21 +0200
Dennis Menschel <menschel-d@posteo.de> wrote:

> Hello,
> =

> I've noticed that since barebox version 2017.07.0, accessing files via TF=
TP only works for files that are located in the root directory of the TFTP =
server.
> Accessing files that reside in subdirectories doesn't work anymore.
> The bug affects both access via /mnt/tftp/ and via the tftp shell command.
> =

> I've tested the following versions of barebox:
> =

> - 2017.05.0: works
> - 2017.06.0: works
> - 2017.07.0: doesn't work anymore
> - 2017.08.0: doesn't work anymore
> =

> Below follows the test scenario I've used to reproduce the bug:
> =

> =

> Scenario
> =3D=3D=3D=3D=3D=3D=3D=3D
> =

> For the server, I'm using a Raspberry Pi 2 with:
> - a DHCP server (isc-dhcp-server) and
> - a TFTP server (tftpd-hpa).

I have seen the same problem, please see this message:

http://lists.infradead.org/pipermail/barebox/2017-July/030587.html

I use tftpd-hpa too.

I want to note again that reverting 944bf0e1 ('fixup! fs: Implement links t=
o directories') and
a602bebc ('fs: Implement links to directories') fixes the problem.

> =

> For the client, I'm using a BeagleBone Black that runs barebox.
> =

> The server's IPv4 address is 192.168.2.82, while the client gets address =
192.168.2.100.
> =

> Test files and directory structure on the TFTP server:
> test-file-1.txt
> test-dir-1/test-file-2.txt
> test-dir-1/test-dir-2/test-file-3.txt
> =

> =

> Network configuration of barebox
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
> =

> barebox@TI AM335x BeagleBone black:/ dhcp
> eth0: 100Mbps full duplex link detected
> DHCP client bound to address 192.168.2.100
> barebox@TI AM335x BeagleBone black:/ devinfo eth0 =

> Parameters: =

>   ethaddr: ec:24:b8:9d:77:12 (type: MAC) =

>   gateway: 0.0.0.0 (type: ipv4) =

>   ipaddr: 192.168.2.100 (type: ipv4) =

>   linux.bootargs:  (type: string) =

>   netmask: 255.255.255.0 (type: ipv4) =

>   serverip: 192.168.2.82 (type: ipv4) =

> =

> =

> Behavior of barebox up to 2017.06.0
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =

> Access via /mnt/tftp
> --------------------
> =

> barebox@TI AM335x BeagleBone black:/ cat /mnt/tftp/test-file-1.txt
> This is from test-file-1.txt.
> barebox@TI AM335x BeagleBone black:/ cat /mnt/tftp/test-dir-1/test-file-2=
.txt
> This is from test-file-2.txt.
> barebox@TI AM335x BeagleBone black:/ cat /mnt/tftp/test-dir-1/test-dir-2/=
test-file-3.txt
> This is from test-file-3.txt.
> =

> =

> Log entries of TFTP server
> --------------------------
> =

> Aug 29 01:45:44 berry03 in.tftpd[5453]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
> Aug 29 01:45:44 berry03 in.tftpd[5454]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
> Aug 29 01:45:46 berry03 in.tftpd[5455]: RRQ from 192.168.2.100 filename t=
est-dir-1
> Aug 29 01:45:46 berry03 in.tftpd[5456]: RRQ from 192.168.2.100 filename t=
est-dir-1/test-file-2.txt
> Aug 29 01:45:46 berry03 in.tftpd[5457]: RRQ from 192.168.2.100 filename t=
est-dir-1/test-file-2.txt
> Aug 29 01:46:00 berry03 in.tftpd[5458]: RRQ from 192.168.2.100 filename t=
est-dir-1/test-dir-2
> Aug 29 01:46:00 berry03 in.tftpd[5459]: RRQ from 192.168.2.100 filename t=
est-dir-1/test-dir-2/test-file-3.txt
> Aug 29 01:46:00 berry03 in.tftpd[5460]: RRQ from 192.168.2.100 filename t=
est-dir-1/test-dir-2/test-file-3.txt
> =

> =

> Access via tftp command
> -----------------------
> =

> barebox@TI AM335x BeagleBone black:/ tftp test-file-1.txt
>         [################################################################=
#]
> barebox@TI AM335x BeagleBone black:/ tftp test-dir-1/test-file-2.txt
>         [################################################################=
#]
> barebox@TI AM335x BeagleBone black:/ tftp test-dir-1/test-dir-2/test-file=
-3.txt
>         [################################################################=
#]
> =

> =

> Log entries of TFTP server
> --------------------------
> =

> Aug 29 01:47:26 berry03 in.tftpd[5468]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
> Aug 29 01:47:26 berry03 in.tftpd[5469]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
> Aug 29 01:47:26 berry03 in.tftpd[5470]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
> Aug 29 01:47:28 berry03 in.tftpd[5471]: RRQ from 192.168.2.100 filename t=
est-dir-1/test-file-2.txt
> Aug 29 01:47:28 berry03 in.tftpd[5472]: RRQ from 192.168.2.100 filename t=
est-dir-1/test-file-2.txt
> Aug 29 01:47:28 berry03 in.tftpd[5473]: RRQ from 192.168.2.100 filename t=
est-dir-1/test-file-2.txt
> Aug 29 01:47:38 berry03 in.tftpd[5474]: RRQ from 192.168.2.100 filename t=
est-dir-1/test-dir-2/test-file-3.txt
> Aug 29 01:47:38 berry03 in.tftpd[5475]: RRQ from 192.168.2.100 filename t=
est-dir-1/test-dir-2/test-file-3.txt
> Aug 29 01:47:38 berry03 in.tftpd[5476]: RRQ from 192.168.2.100 filename t=
est-dir-1/test-dir-2/test-file-3.txt
> =

> =

> =

> Behavior of barebox since 2017.07.0
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =

> =

> Access via /mnt/tftp
> --------------------
> =

> barebox@TI AM335x BeagleBone black:/ cat /mnt/tftp/test-file-1.txt
> This is from test-file-1.txt.
> barebox@TI AM335x BeagleBone black:/ cat /mnt/tftp/test-dir-1/test-file-2=
.txt
> could not open /mnt/tftp/test-dir-1/test-file-2.txt: Invalid argument
> barebox@TI AM335x BeagleBone black:/ cat /mnt/tftp/test-dir-1/test-dir-2/=
test-file-3.txt
> could not open /mnt/tftp/test-dir-1/test-dir-2/test-file-3.txt: Invalid a=
rgument
> =

> =

> Log entries of TFTP server
> --------------------------
> =

> Aug 29 02:11:01 berry03 in.tftpd[5517]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
> Aug 29 02:11:01 berry03 in.tftpd[5518]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
> Aug 29 02:11:01 berry03 in.tftpd[5519]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
> Aug 29 02:11:01 berry03 in.tftpd[5520]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
> Aug 29 02:11:38 berry03 in.tftpd[5521]: RRQ from 192.168.2.100 filename t=
est-dir-1
> Aug 29 02:11:38 berry03 in.tftpd[5522]: RRQ from 192.168.2.100 filename t=
est-dir-1
> Aug 29 02:11:38 berry03 in.tftpd[5523]: RRQ from 192.168.2.100 filename t=
est-dir-1
> Aug 29 02:11:38 berry03 in.tftpd[5524]: RRQ from 192.168.2.100 filename t=
est-dir-1
> Aug 29 02:11:38 berry03 in.tftpd[5525]: RRQ from 192.168.2.100 filename t=
est-dir-1
> Aug 29 02:11:38 berry03 in.tftpd[5526]: RRQ from 192.168.2.100 filename t=
est-dir-1
> Aug 29 02:11:58 berry03 in.tftpd[5527]: RRQ from 192.168.2.100 filename t=
est-dir-1
> Aug 29 02:11:58 berry03 in.tftpd[5528]: RRQ from 192.168.2.100 filename t=
est-dir-1
> Aug 29 02:11:58 berry03 in.tftpd[5529]: RRQ from 192.168.2.100 filename t=
est-dir-1
> Aug 29 02:11:58 berry03 in.tftpd[5530]: RRQ from 192.168.2.100 filename t=
est-dir-1
> Aug 29 02:11:58 berry03 in.tftpd[5531]: RRQ from 192.168.2.100 filename t=
est-dir-1
> Aug 29 02:11:58 berry03 in.tftpd[5532]: RRQ from 192.168.2.100 filename t=
est-dir-1
> =

> =

> Access via tftp command
> -----------------------
> =

> barebox@TI AM335x BeagleBone black:/ tftp test-file-1.txt
>         [################################################################=
#]
> barebox@TI AM335x BeagleBone black:/ tftp test-dir-1/test-file-2.txt
> could not open /.tftp_tmp_path/test-dir-1/test-file-2.txt: Invalid argume=
nt
> =

> barebox@TI AM335x BeagleBone black:/ tftp test-dir-1/test-dir-2/test-file=
-3.txt
> could not open /.tftp_tmp_path/test-dir-1/test-dir-2/test-file-3.txt: Inv=
alid argument
> =

> =

> =

> Log entries of TFTP server
> --------------------------
> =

> Aug 29 02:13:27 berry03 in.tftpd[5534]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
> Aug 29 02:13:27 berry03 in.tftpd[5535]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
> Aug 29 02:13:27 berry03 in.tftpd[5536]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
> Aug 29 02:13:27 berry03 in.tftpd[5537]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
> Aug 29 02:13:27 berry03 in.tftpd[5538]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
> Aug 29 02:13:27 berry03 in.tftpd[5539]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
> Aug 29 02:13:39 berry03 in.tftpd[5540]: RRQ from 192.168.2.100 filename t=
est-dir-1
> Aug 29 02:13:39 berry03 in.tftpd[5541]: RRQ from 192.168.2.100 filename t=
est-dir-1
> Aug 29 02:13:39 berry03 in.tftpd[5542]: RRQ from 192.168.2.100 filename t=
est-dir-1
> Aug 29 02:14:05 berry03 in.tftpd[5543]: RRQ from 192.168.2.100 filename t=
est-dir-1
> Aug 29 02:14:05 berry03 in.tftpd[5544]: RRQ from 192.168.2.100 filename t=
est-dir-1
> Aug 29 02:14:05 berry03 in.tftpd[5545]: RRQ from 192.168.2.100 filename t=
est-dir-1
> =

> =

> Conclusion
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =

> As can be seen from the log entries of the TFTP server, the access patter=
n of barebox has changed.
> All of the attempts to access a subdirectory stop at "test-dir-1".
> Furthermore, the number of accesses per file is different.
> The timestamps indicate which requests belong to one file access attempt.
> =

> I hope this information helps.
> Thanks in advance!
> =

> Best regards,
> Dennis Menschel
> =



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
