Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pa84W-0007DX-4G
	for barebox@lists.infradead.org; Tue, 04 Jan 2011 14:41:15 +0000
Message-ID: <4D233013.8070300@free-electrons.com>
Date: Tue, 04 Jan 2011 15:34:59 +0100
From: Gregory CLEMENT <gregory.clement@free-electrons.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0301219936=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/4] ARM STM/i.MX: Bug fix and some improvements
To: barebox <barebox@lists.infradead.org>

This is a multi-part message in MIME format.
--===============0301219936==
Content-Type: multipart/alternative;
 boundary="------------070901070207090703060508"

This is a multi-part message in MIME format.
--------------070901070207090703060508
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

With this patch set comes a bug fix when allocating buffer, and some
improvement which allow to specify more things at board level.

All this commits are done to be applied on top of this git repository :

  http://git.pengutronix.de/git/jbe/for_barebox_next/ <http://git.pengutronix.de/git/jbe/for_barebox_next/> next_seperate_videomode

The HEAD of this git repository, when I created this patch, was:
commit d4873239c2a6d03d8f7cf844178505e920e3d21f
ARM Chumby-Falconwing: Add a user for video graphics support on i.MX23


Gregory CLEMENT (4):
  ARM STM/i.MX: Allocate memory for framebuffer during probe
  ARM STM/i.MX: Add possibility to choose the bit per pixel for STM
    video driver
  ARM STM/i.MX: Add possibility to select the data mode for stm video  
      driver ( DCn signal is high )
  ARM STM/i.MX: Add the reset control of LCD

 arch/arm/mach-stm/include/mach/fb.h |    3 +++
 drivers/video/stm.c                 |   30 +++++++++++++++++++++++++++++-
 2 files changed, 32 insertions(+), 1 deletions(-)



--------------070901070207090703060508
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#ffffff" text="#000000">
    <pre>With this patch set comes a bug fix when allocating buffer, and some
improvement which allow to specify more things at board level.

All this commits are done to be applied on top of this git repository :

 &nbsp;<a href="http://git.pengutronix.de/git/jbe/for_barebox_next/" target="_blank">http://git.pengutronix.de/git/<wbr>jbe/for_barebox_next/</a> next_seperate_videomode

The HEAD of this git repository, when I created this patch, was:
commit d4873239c2a6d03d8f7cf844178505e920e3d21f
ARM Chumby-Falconwing: Add a user for video graphics support on i.MX23


Gregory CLEMENT (4):
  ARM STM/i.MX: Allocate memory for framebuffer during probe
  ARM STM/i.MX: Add possibility to choose the bit per pixel for STM
    video driver
  ARM STM/i.MX: Add possibility to select the data mode for stm video  
      driver ( DCn signal is high )
  ARM STM/i.MX: Add the reset control of LCD

 arch/arm/mach-stm/include/mach/fb.h |    3 +++
 drivers/video/stm.c                 |   30 +++++++++++++++++++++++++++++-
 2 files changed, 32 insertions(+), 1 deletions(-)

</pre>
  </body>
</html>

--------------070901070207090703060508--


--===============0301219936==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0301219936==--
