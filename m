Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Prs5m-0006vv-Ec
	for barebox@lists.infradead.org; Tue, 22 Feb 2011 13:15:51 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Tue, 22 Feb 2011 14:15:46 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00AF4@SRV-VS06.TELEVIC.COM>
Content-Language: en-US
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
Subject: booting kernel(s)
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On our i.MX27 based board, we would like to have two Kernels : a default kernel and a "rescue" kernel. The first one is the one that will be started normally. The latter would be used only in (the rare) case the default kernel fails to start. E.g., when we remotely update the kernel, it could be that the uploaded image gets corrupt and cannot be started anymore. In that case, we would like to fall back to a "rescue" kernel, a minimal kernel and a small application with a minimum of capabilities, i.e. with some network capabilities just to be able to upload a new image.
We already have this feature for another device that runs U-boot. I guess this should also be possible in barebox ?
Because it was implemented in U-boot some time ago by another company, I'm not completely sure how it is done. I think it's done with this single line in the board's configuration file :
#define CONFIG_BOOTCOMMAND   "bootm 0x20200000;bootm 0x200A0000"
I guess, when the first bootm command fails (due to corrupt image), it will execute the second one. If the first command is successful, the Linux kernel takes over and the second command gets never executed. Am I right ?
I think I can do the same thing in my Barebox's boot script, can I ? Or are there other/better solutions to handle this ?



Filip


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
