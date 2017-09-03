Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout02.posteo.de ([185.67.36.66])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1doQbM-0004nO-JA
 for barebox@lists.infradead.org; Sun, 03 Sep 2017 08:49:59 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id 224C3209C2
 for <barebox@lists.infradead.org>; Sun,  3 Sep 2017 10:49:29 +0200 (CEST)
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 3xlRVd1mFBz10HS
 for <barebox@lists.infradead.org>; Sun,  3 Sep 2017 10:49:29 +0200 (CEST)
From: Dennis Menschel <menschel-d@posteo.de>
Message-ID: <626198c2-50fc-2e86-1abd-8a92cd2d448e@posteo.de>
Date: Sun, 3 Sep 2017 10:49:21 +0200
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2351868164808100180=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [BUG] TFTP: No access to subdirectories
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2351868164808100180==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="DC45luf2aL0mSmMbLtlioc7LDvIRXX1Ma"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--DC45luf2aL0mSmMbLtlioc7LDvIRXX1Ma
Content-Type: multipart/mixed; boundary="twUd2GaVSCVrnHiCm7engl49mXSM80BRD";
 protected-headers="v1"
From: Dennis Menschel <menschel-d@posteo.de>
To: barebox@lists.infradead.org
Message-ID: <626198c2-50fc-2e86-1abd-8a92cd2d448e@posteo.de>
Subject: [BUG] TFTP: No access to subdirectories

--twUd2GaVSCVrnHiCm7engl49mXSM80BRD
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hello,

I've noticed that since barebox version 2017.07.0, accessing files via TF=
TP only works for files that are located in the root directory of the TFT=
P server.
Accessing files that reside in subdirectories doesn't work anymore.
The bug affects both access via /mnt/tftp/ and via the tftp shell command=
=2E

I've tested the following versions of barebox:

- 2017.05.0: works
- 2017.06.0: works
- 2017.07.0: doesn't work anymore
- 2017.08.0: doesn't work anymore

Below follows the test scenario I've used to reproduce the bug:


Scenario
=3D=3D=3D=3D=3D=3D=3D=3D

For the server, I'm using a Raspberry Pi 2 with:
- a DHCP server (isc-dhcp-server) and
- a TFTP server (tftpd-hpa).

For the client, I'm using a BeagleBone Black that runs barebox.

The server's IPv4 address is 192.168.2.82, while the client gets address =
192.168.2.100.

Test files and directory structure on the TFTP server:
test-file-1.txt
test-dir-1/test-file-2.txt
test-dir-1/test-dir-2/test-file-3.txt


Network configuration of barebox
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

barebox@TI AM335x BeagleBone black:/ dhcp
eth0: 100Mbps full duplex link detected
DHCP client bound to address 192.168.2.100
barebox@TI AM335x BeagleBone black:/ devinfo eth0=20
Parameters:=20
  ethaddr: ec:24:b8:9d:77:12 (type: MAC)=20
  gateway: 0.0.0.0 (type: ipv4)=20
  ipaddr: 192.168.2.100 (type: ipv4)=20
  linux.bootargs:  (type: string)=20
  netmask: 255.255.255.0 (type: ipv4)=20
  serverip: 192.168.2.82 (type: ipv4)=20


Behavior of barebox up to 2017.06.0
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Access via /mnt/tftp
--------------------

barebox@TI AM335x BeagleBone black:/ cat /mnt/tftp/test-file-1.txt
This is from test-file-1.txt.
barebox@TI AM335x BeagleBone black:/ cat /mnt/tftp/test-dir-1/test-file-2=
=2Etxt
This is from test-file-2.txt.
barebox@TI AM335x BeagleBone black:/ cat /mnt/tftp/test-dir-1/test-dir-2/=
test-file-3.txt
This is from test-file-3.txt.


Log entries of TFTP server
--------------------------

Aug 29 01:45:44 berry03 in.tftpd[5453]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
Aug 29 01:45:44 berry03 in.tftpd[5454]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
Aug 29 01:45:46 berry03 in.tftpd[5455]: RRQ from 192.168.2.100 filename t=
est-dir-1
Aug 29 01:45:46 berry03 in.tftpd[5456]: RRQ from 192.168.2.100 filename t=
est-dir-1/test-file-2.txt
Aug 29 01:45:46 berry03 in.tftpd[5457]: RRQ from 192.168.2.100 filename t=
est-dir-1/test-file-2.txt
Aug 29 01:46:00 berry03 in.tftpd[5458]: RRQ from 192.168.2.100 filename t=
est-dir-1/test-dir-2
Aug 29 01:46:00 berry03 in.tftpd[5459]: RRQ from 192.168.2.100 filename t=
est-dir-1/test-dir-2/test-file-3.txt
Aug 29 01:46:00 berry03 in.tftpd[5460]: RRQ from 192.168.2.100 filename t=
est-dir-1/test-dir-2/test-file-3.txt


Access via tftp command
-----------------------

barebox@TI AM335x BeagleBone black:/ tftp test-file-1.txt
        [################################################################=
#]
barebox@TI AM335x BeagleBone black:/ tftp test-dir-1/test-file-2.txt
        [################################################################=
#]
barebox@TI AM335x BeagleBone black:/ tftp test-dir-1/test-dir-2/test-file=
-3.txt
        [################################################################=
#]


Log entries of TFTP server
--------------------------

Aug 29 01:47:26 berry03 in.tftpd[5468]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
Aug 29 01:47:26 berry03 in.tftpd[5469]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
Aug 29 01:47:26 berry03 in.tftpd[5470]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
Aug 29 01:47:28 berry03 in.tftpd[5471]: RRQ from 192.168.2.100 filename t=
est-dir-1/test-file-2.txt
Aug 29 01:47:28 berry03 in.tftpd[5472]: RRQ from 192.168.2.100 filename t=
est-dir-1/test-file-2.txt
Aug 29 01:47:28 berry03 in.tftpd[5473]: RRQ from 192.168.2.100 filename t=
est-dir-1/test-file-2.txt
Aug 29 01:47:38 berry03 in.tftpd[5474]: RRQ from 192.168.2.100 filename t=
est-dir-1/test-dir-2/test-file-3.txt
Aug 29 01:47:38 berry03 in.tftpd[5475]: RRQ from 192.168.2.100 filename t=
est-dir-1/test-dir-2/test-file-3.txt
Aug 29 01:47:38 berry03 in.tftpd[5476]: RRQ from 192.168.2.100 filename t=
est-dir-1/test-dir-2/test-file-3.txt



Behavior of barebox since 2017.07.0
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D


Access via /mnt/tftp
--------------------

barebox@TI AM335x BeagleBone black:/ cat /mnt/tftp/test-file-1.txt
This is from test-file-1.txt.
barebox@TI AM335x BeagleBone black:/ cat /mnt/tftp/test-dir-1/test-file-2=
=2Etxt
could not open /mnt/tftp/test-dir-1/test-file-2.txt: Invalid argument
barebox@TI AM335x BeagleBone black:/ cat /mnt/tftp/test-dir-1/test-dir-2/=
test-file-3.txt
could not open /mnt/tftp/test-dir-1/test-dir-2/test-file-3.txt: Invalid a=
rgument


Log entries of TFTP server
--------------------------

Aug 29 02:11:01 berry03 in.tftpd[5517]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
Aug 29 02:11:01 berry03 in.tftpd[5518]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
Aug 29 02:11:01 berry03 in.tftpd[5519]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
Aug 29 02:11:01 berry03 in.tftpd[5520]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
Aug 29 02:11:38 berry03 in.tftpd[5521]: RRQ from 192.168.2.100 filename t=
est-dir-1
Aug 29 02:11:38 berry03 in.tftpd[5522]: RRQ from 192.168.2.100 filename t=
est-dir-1
Aug 29 02:11:38 berry03 in.tftpd[5523]: RRQ from 192.168.2.100 filename t=
est-dir-1
Aug 29 02:11:38 berry03 in.tftpd[5524]: RRQ from 192.168.2.100 filename t=
est-dir-1
Aug 29 02:11:38 berry03 in.tftpd[5525]: RRQ from 192.168.2.100 filename t=
est-dir-1
Aug 29 02:11:38 berry03 in.tftpd[5526]: RRQ from 192.168.2.100 filename t=
est-dir-1
Aug 29 02:11:58 berry03 in.tftpd[5527]: RRQ from 192.168.2.100 filename t=
est-dir-1
Aug 29 02:11:58 berry03 in.tftpd[5528]: RRQ from 192.168.2.100 filename t=
est-dir-1
Aug 29 02:11:58 berry03 in.tftpd[5529]: RRQ from 192.168.2.100 filename t=
est-dir-1
Aug 29 02:11:58 berry03 in.tftpd[5530]: RRQ from 192.168.2.100 filename t=
est-dir-1
Aug 29 02:11:58 berry03 in.tftpd[5531]: RRQ from 192.168.2.100 filename t=
est-dir-1
Aug 29 02:11:58 berry03 in.tftpd[5532]: RRQ from 192.168.2.100 filename t=
est-dir-1


Access via tftp command
-----------------------

barebox@TI AM335x BeagleBone black:/ tftp test-file-1.txt
        [################################################################=
#]
barebox@TI AM335x BeagleBone black:/ tftp test-dir-1/test-file-2.txt
could not open /.tftp_tmp_path/test-dir-1/test-file-2.txt: Invalid argume=
nt

barebox@TI AM335x BeagleBone black:/ tftp test-dir-1/test-dir-2/test-file=
-3.txt
could not open /.tftp_tmp_path/test-dir-1/test-dir-2/test-file-3.txt: Inv=
alid argument



Log entries of TFTP server
--------------------------

Aug 29 02:13:27 berry03 in.tftpd[5534]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
Aug 29 02:13:27 berry03 in.tftpd[5535]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
Aug 29 02:13:27 berry03 in.tftpd[5536]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
Aug 29 02:13:27 berry03 in.tftpd[5537]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
Aug 29 02:13:27 berry03 in.tftpd[5538]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
Aug 29 02:13:27 berry03 in.tftpd[5539]: RRQ from 192.168.2.100 filename t=
est-file-1.txt
Aug 29 02:13:39 berry03 in.tftpd[5540]: RRQ from 192.168.2.100 filename t=
est-dir-1
Aug 29 02:13:39 berry03 in.tftpd[5541]: RRQ from 192.168.2.100 filename t=
est-dir-1
Aug 29 02:13:39 berry03 in.tftpd[5542]: RRQ from 192.168.2.100 filename t=
est-dir-1
Aug 29 02:14:05 berry03 in.tftpd[5543]: RRQ from 192.168.2.100 filename t=
est-dir-1
Aug 29 02:14:05 berry03 in.tftpd[5544]: RRQ from 192.168.2.100 filename t=
est-dir-1
Aug 29 02:14:05 berry03 in.tftpd[5545]: RRQ from 192.168.2.100 filename t=
est-dir-1


Conclusion
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

As can be seen from the log entries of the TFTP server, the access patter=
n of barebox has changed.
All of the attempts to access a subdirectory stop at "test-dir-1".
Furthermore, the number of accesses per file is different.
The timestamps indicate which requests belong to one file access attempt.=


I hope this information helps.
Thanks in advance!

Best regards,
Dennis Menschel


--twUd2GaVSCVrnHiCm7engl49mXSM80BRD--

--DC45luf2aL0mSmMbLtlioc7LDvIRXX1Ma
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJZq8IYAAoJELoiXviItXXQwW4QAIi0M8FxrIZTxL2BMGKMpBON
VUT/uRCbLuchdsz+a7ex8NvgntP6Y/U6hG/1EYMTraav0aMUSil+GNZniSp6BAOX
5FLUtJo2cKFpr+iQytn3StUPNsr4rCYVklKQlIzrekpMoUAqefbHrQS8eR9mfJ+c
qsp2jdDZkVu+B0HsxGDr7FIj0cXihlygu/JT2gJltTimXCByzDLVPm1mqrUyq+Uc
bzLqdxJxFJ5h4lZzVLuLLVkw0c3NOCJSqdEEkVppLdlmh53tVGcPbSsUAcg38DvE
QCaWnFduSjhXm4I7Vize4ehgoCYTOl8Z+rIJmkc7o0ErhiK0PsmRaDg2fUSFyui5
LyCpmJxHIoNNfzWn/bbUf/tnYBfa5BMz132Eh3iXDZ5uiwIUMMzHco2E06TP9gf0
jSn377jyUEMkx67CHM+G1kAiv3noBAI7aw2hpmsFlQlUtK6xORr/3Tuygg+Ajq8E
sIyx3LVV6+HvJUaw9+X0D3ya6nRrPpY7Rty+gmlZcFXO22PsVg7i++XhC4P9//Ro
A/4+WwEdNWw6MgwnahF2w6xocR33u/p0qoIFJJE8hFCt2dngr54d1qa5O2FbAd5+
KsHZ1rKkLLVjLkUn8NXfDhQ2mtTJGjXJzNKJAzaFuqhp1U9QJCn/vOlXAjFbjOak
VhYJUvRRJVutcUfsdmvo
=TSWf
-----END PGP SIGNATURE-----

--DC45luf2aL0mSmMbLtlioc7LDvIRXX1Ma--


--===============2351868164808100180==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2351868164808100180==--
