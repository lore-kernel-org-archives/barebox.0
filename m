Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PV0LO-0007Kq-Jc
	for barebox@lists.infradead.org; Tue, 21 Dec 2010 11:25:33 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PV0LM-0007hB-Lq
	for barebox@lists.infradead.org; Tue, 21 Dec 2010 12:25:24 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PV0LM-0000RA-Im
	for barebox@lists.infradead.org; Tue, 21 Dec 2010 12:25:24 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 21 Dec 2010 12:25:21 +0100
Message-Id: <1292930721-31734-10-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1292930721-31734-1-git-send-email-jbe@pengutronix.de>
References: <1292930721-31734-1-git-send-email-jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 9/9] ARM Chumby: Add list of available GPIOs and their meaning
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/chumby_falconwing/falconwing.c |   85 ++++++++++++++++++++++++
 1 files changed, 85 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index f5ed133..76ff906 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -390,4 +390,89 @@ make ARCH=arm CROSS_COMPILE=armv5compiler
   partition or you can do it in the classic way: mkfs on it, mount it and copy
   all required data and programs into it.
 
+@section gpio_falconwing Available GPIOs
+
+The Falconwing uses some GPIOs to control various features. With the regular
+GPIO commands these features can be controlled at @a barebox's runtime.
+
+<table width="100%" border="1" cellspacing="1" cellpadding="3">
+	<tr>
+		<td>No</td>
+		<td>Direction</td>
+		<td>Function</td>
+		<td>Reset</td>
+		<td>Set</td>
+	</tr>
+	<tr>
+		<td>8</td>
+		<td>Output</td>
+		<td>Switch Audio Amplifier</td>
+		<td>Off</td>
+		<td>On</td>
+	</tr>
+	<tr>
+		<td>11</td>
+		<td>Input</td>
+		<td>Head Phone Detection</td>
+		<td>TBD</td>
+		<td>TBD</td>
+	</tr>
+	<tr>
+		<td>14</td>
+		<td>Input</td>
+		<td>Unused (J113)</td>
+		<td>User</td>
+		<td>User</td>
+	</tr>
+	<tr>
+		<td>15</td>
+		<td>Input</td>
+		<td>Unused (J114)</td>
+		<td>User</td>
+		<td>User</td>
+	</tr>
+	<tr>
+		<td>26</td>
+		<td>Output</td>
+		<td>USB Power</td>
+		<td>TBD</td>
+		<td>TBD</td>
+	</tr>
+	<tr>
+		<td>27</td>
+		<td>Input</td>
+		<td>Display Connected</td>
+		<td>Display<br>Attached</td>
+		<td>Display<br>Disconnected</td>
+	</tr>
+	<tr>
+		<td>29</td>
+		<td>Output</td>
+		<td>USB HUB Reset</td>
+		<td>TBD</td>
+		<td>TBD</td>
+	</tr>
+	<tr>
+		<td>50</td>
+		<td>Output</td>
+		<td>Display Reset</td>
+		<td>Display<br>Reset</td>
+		<td>Display<br>Running</td>
+	</tr>
+	<tr>
+		<td>60</td>
+		<td>Output</td>
+		<td>Display Backlight</td>
+		<td>Backlight<br>Off</td>
+		<td>Backlight<br>On (100 %)</td>
+	</tr>
+	<tr>
+		<td>62</td>
+		<td>Input</td>
+		<td>Bend</td>
+		<td>Not pressed</td>
+		<td>Pressed</td>
+	</tr>
+</table>
+
 */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
