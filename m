Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZL8Gc-0007mb-Rs
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 11:14:23 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1ZL6Oe-0002HC-Lm
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 11:14:32 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 31 Jul 2015 13:17:08 +0200
References: <1438333432-10118-1-git-send-email-jbe@pengutronix.de>
 <1438333432-10118-7-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1438333432-10118-7-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201507311317.08715.jbe@pengutronix.de>
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
Subject: fixup! PPC/PCM030: provide EEPROM support to read factory settings
To: barebox@lists.infradead.org

Forgotten to enable I2C and EEPROM support in the PCM030's default config.

diff --git a/arch/ppc/configs/pcm030_defconfig b/arch/ppc/configs/pcm030_de=
fconfig
index 7b84e2f3b689..61380ac294e5 100644
--- a/arch/ppc/configs/pcm030_defconfig
+++ b/arch/ppc/configs/pcm030_defconfig
@@ -35,8 +35,11 @@ CONFIG_CMD_OFTREE=3Dy
 CONFIG_CMD_TIME=3Dy
 CONFIG_NET=3Dy
 CONFIG_DRIVER_NET_MPC5200=3Dy
+CONFIG_I2C=3Dy
+CONFIG_I2C_IMX=3Dy
 CONFIG_MTD=3Dy
 CONFIG_DRIVER_CFI=3Dy
 CONFIG_CFI_BUFFER_WRITE=3Dy
+CONFIG_EEPROM_AT24=3Dy
 CONFIG_FS_TFTP=3Dy
 CONFIG_ZLIB=3Dy

-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Borleis =A0 =A0 =A0 =A0 =A0 =A0 |
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| http://=
www.pengutronix.de/ =A0|

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
