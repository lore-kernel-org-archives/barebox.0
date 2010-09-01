Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oqh1q-0003Ez-7F
	for barebox@lists.infradead.org; Wed, 01 Sep 2010 06:42:40 +0000
Received: by wyb38 with SMTP id 38so8070204wyb.36
	for <barebox@lists.infradead.org>; Tue, 31 Aug 2010 23:42:35 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 1 Sep 2010 12:12:35 +0530
Message-ID: <AANLkTimCj2t-uUJ0vce9rgvwXZnFYtVxkHH2CNwdOkta@mail.gmail.com>
From: Nataraj S Narayan <natarajsn@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1113040733=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: barebox: write a file to /dev/ubi0
To: barebox@lists.infradead.org

--===============1113040733==
Content-Type: multipart/alternative; boundary=0016e65b5ec6b8d08e048f2d0097

--0016e65b5ec6b8d08e048f2d0097
Content-Type: text/plain; charset=ISO-8859-1

Hi

Able to attach nand to ubi  to them ubimkvol to ubi0.root.


9263-EK:/ ubiattach dev/nand0.rootfs
UBI: attaching mtd0 to ubi0
UBI: physical eraseblock size:   131072 bytes (128 KiB)
UBI: logical eraseblock size:    126976 bytes
UBI: smallest flash I/O unit:    2048
UBI: VID header offset:          2048 (aligned 2048)
UBI: data offset:                4096
UBI: empty MTD device detected
UBI: create volume table (copy #1)
UBI: create volume table (copy #2)
registering /dev/ubi0
UBI: attached mtd0 to ubi0
UBI: MTD device name:            "nand0.rootfs"
UBI: MTD device size:            253 MiB
UBI: number of good PEBs:        2028
UBI: number of bad PEBs:         0
UBI: max. allowed volumes:       128
UBI: wear-leveling threshold:    4096
UBI: number of internal volumes: 1
UBI: number of user volumes:     0
UBI: available PEBs:             2004
UBI: total number of reserved PEBs: 24
UBI: number of PEBs reserved for bad PEB handling: 20
UBI: max/mean erase counter: 1/0

# ubimkvol dev/ubi0 root 0

crw-------  209764352 ubi0.root


I need to write the rootfs.ubifs onto ubi0.root. The file resides on a tftp
server. SInce the file size is 30M,

tftp gives

9263-EK:/ tftp rootfs.ubifs
TFTP from server 192.168.0.200 ('rootfs.ubifs' -> 'rootfs.ubifs')
        #################################################################
        #################################################################
        #################################################################
        #################################################################
        #################################################################
        #################################################################
        #################################################################
        #################################################################
        #################################################################
        #################################################################
        ###########################################################write:
Out of memory

tftp failed: error -12


Any other way to get the file and do a nand write?

warm regards

Nataraj

--0016e65b5ec6b8d08e048f2d0097
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi<br><br>Able to attach nand to ubi=A0 to them ubimkvol to ubi0.root.<br><=
br><br>9263-EK:/ ubiattach dev/nand0.rootfs<br>UBI: attaching mtd0 to ubi0<=
br>UBI: physical eraseblock size:=A0=A0 131072 bytes (128 KiB)<br>UBI: logi=
cal eraseblock size:=A0=A0=A0 126976 bytes<br>
UBI: smallest flash I/O unit:=A0=A0=A0 2048<br>UBI: VID header offset:=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 2048 (aligned 2048)<br>UBI: data offset:=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 4096<br>UBI: empty MTD device detected=
<br>UBI: create volume table (copy #1)<br>UBI: create volume table (copy #2=
)<br>
registering /dev/ubi0<br>UBI: attached mtd0 to ubi0<br>UBI: MTD device name=
:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 &quot;nand0.rootfs&quot;<br>UBI: MTD dev=
ice size:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 253 MiB<br>UBI: number of good P=
EBs:=A0=A0=A0=A0=A0=A0=A0 2028<br>UBI: number of bad PEBs:=A0=A0=A0=A0=A0=
=A0=A0=A0 0<br>
UBI: max. allowed volumes:=A0=A0=A0=A0=A0=A0 128<br>UBI: wear-leveling thre=
shold:=A0=A0=A0 4096<br>UBI: number of internal volumes: 1<br>UBI: number o=
f user volumes:=A0=A0=A0=A0 0<br>UBI: available PEBs:=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 2004<br>UBI: total number of reserved PEBs: 24<br>
UBI: number of PEBs reserved for bad PEB handling: 20<br>UBI: max/mean eras=
e counter: 1/0<br><br># ubimkvol dev/ubi0 root 0<br><br>crw-------=A0 20976=
4352 ubi0.root<br><br><br>I need to write the rootfs.ubifs onto ubi0.root. =
The file resides on a tftp server. SInce the file size is 30M,<br>
<br>tftp gives <br><br>9263-EK:/ tftp rootfs.ubifs<br>TFTP from server 192.=
168.0.200 (&#39;rootfs.ubifs&#39; -&gt; &#39;rootfs.ubifs&#39;)<br>=A0=A0=
=A0=A0=A0=A0=A0 ###########################################################=
######<br>=A0=A0=A0=A0=A0=A0=A0 ###########################################=
######################<br>
=A0=A0=A0=A0=A0=A0=A0 #####################################################=
############<br>=A0=A0=A0=A0=A0=A0=A0 #####################################=
############################<br>=A0=A0=A0=A0=A0=A0=A0 #####################=
############################################<br>
=A0=A0=A0=A0=A0=A0=A0 #####################################################=
############<br>=A0=A0=A0=A0=A0=A0=A0 #####################################=
############################<br>=A0=A0=A0=A0=A0=A0=A0 #####################=
############################################<br>
=A0=A0=A0=A0=A0=A0=A0 #####################################################=
############<br>=A0=A0=A0=A0=A0=A0=A0 #####################################=
############################<br>=A0=A0=A0=A0=A0=A0=A0 #####################=
######################################write: Out of memory<br>
<br>tftp failed: error -12<br><br><br>Any other way to get the file and do =
a nand write? <br><br>warm regards<br><br>Nataraj<br>

--0016e65b5ec6b8d08e048f2d0097--


--===============1113040733==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1113040733==--
