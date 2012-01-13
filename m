Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([80.150.88.70])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RldAu-0000JY-8J
 for barebox@lists.infradead.org; Fri, 13 Jan 2012 09:11:53 +0000
MIME-Version: 1.0
Message-ID: <OF2ADC7AFF.7875240B-ONC1257984.002AE123-C1257984.003043B9@o0802.rafi.inhouse>
From: guenter.gebhardt@rafi.de
Date: Fri, 13 Jan 2012 09:47:08 +0100
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6099577329903693483=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: imx35 NFC and jffs2
To: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============6099577329903693483==
Content-Type: multipart/alternative; boundary="=_alternative 003043B8C1257984_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 003043B8C1257984_=
Content-Type: text/plain; charset="US-ASCII"

I am using jffs2 for my Linux root file system.

I am using the following command to create it:

$ mkfs.jffs2 -D ${ROOTFS_DEVICE_TABLE} -r ${ROOTFS_TMP} -o 
${DIR_TFTP}/${ROOTFS_IMG} -n -l -e 128

Then I am using the barebox shell to program this image to the NAND flash:

$ update_rootfs nand

The system get's booted now. All seems to be fine.
But after using the system for a while I get a lot of error messages 
originating from the jffs2 file system:

UnCorrectable RS-ECC Error   
UnCorrectable RS-ECC Error   
UnCorrectable RS-ECC Error   
UnCorrectable RS-ECC Error   
mtd->read(0x6f8 bytes from 0x760108) returned ECC error

This leads to a corrupted and unusable file system.

I executed all the tests provided by the Linux kernel mtd device driver 
with success.
Also nandtest from the MTD utils package runs with success.
Therefore I assume that the imx35 NFC device driver is working well.

Software Versions:

barebox-2011.11.0
linux-2.6.38.2
mkfs.jffs2 --version # revision 1.60
--=_alternative 003043B8C1257984_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">I am using jffs2 for my Linux root file
system.</font>
<br>
<br><font size=2 face="sans-serif">I am using the following command to
create it:</font>
<br>
<br><font size=2 face="sans-serif">$ mkfs.jffs2 -D ${ROOTFS_DEVICE_TABLE}
-r ${ROOTFS_TMP} -o ${DIR_TFTP}/${ROOTFS_IMG} -n -l -e 128</font>
<br>
<br><font size=2 face="sans-serif">Then I am using the barebox shell to
program this image to the NAND flash:</font>
<br>
<br><font size=2 face="sans-serif">$ update_rootfs nand</font>
<br>
<br><font size=2 face="sans-serif">The system get's booted now. All seems
to be fine.</font>
<br><font size=2 face="sans-serif">But after using the system for a while
I get a lot of error messages originating from the jffs2 file system:</font>
<br>
<br><font size=2 face="sans-serif">UnCorrectable RS-ECC Error &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </font>
<br><font size=2 face="sans-serif">UnCorrectable RS-ECC Error &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </font>
<br><font size=2 face="sans-serif">UnCorrectable RS-ECC Error &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </font>
<br><font size=2 face="sans-serif">UnCorrectable RS-ECC Error &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </font>
<br><font size=2 face="sans-serif">mtd-&gt;read(0x6f8 bytes from 0x760108)
returned ECC error</font>
<br>
<br><font size=2 face="sans-serif">This leads to a corrupted and unusable
file system.</font>
<br>
<br><font size=2 face="sans-serif">I executed all the tests provided by
the Linux kernel mtd device driver with success.</font>
<br><font size=2 face="sans-serif">Also nandtest from the MTD utils package
runs with success.</font>
<br><font size=2 face="sans-serif">Therefore I assume that the imx35 NFC
device driver is working well.</font>
<br>
<br><font size=2 face="sans-serif">Software Versions:</font>
<br>
<br><font size=2 face="sans-serif">barebox-2011.11.0</font>
<br><font size=2 face="sans-serif">linux-2.6.38.2</font>
<br><font size=2 face="sans-serif">mkfs.jffs2 --version # revision 1.60</font>
--=_alternative 003043B8C1257984_=--


--===============6099577329903693483==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6099577329903693483==--
