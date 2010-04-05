Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gw0-f49.google.com ([74.125.83.49])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1Nyjkl-0007DG-PH
	for barebox@lists.infradead.org; Mon, 05 Apr 2010 10:42:00 +0000
Received: by gwj16 with SMTP id 16so2586997gwj.36
	for <barebox@lists.infradead.org>; Mon, 05 Apr 2010 03:41:57 -0700 (PDT)
Message-ID: <4BB9BE71.8090908@gmail.com>
Date: Mon, 05 Apr 2010 05:41:53 -0500
From: Nishanth Menon <menon.nishanth@gmail.com>
MIME-Version: 1.0
References: <1270458446-25073-1-git-send-email-gadiyar@ti.com>
	<1270458446-25073-2-git-send-email-gadiyar@ti.com>
In-Reply-To: <1270458446-25073-2-git-send-email-gadiyar@ti.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] omap3: rename defconfigs to align with kernel
To: Anand Gadiyar <gadiyar@ti.com>
Cc: barebox@lists.infradead.org

On 04/05/2010 04:07 AM, Anand Gadiyar wrote:
> Rename 3430SDP and beagleboard defconfigs to align with the
> names used in the Linux kernel
>
> No functional change
>
> Signed-off-by: Anand Gadiyar<gadiyar@ti.com>
> ---
> Not sure if I need to send a git-diff for this. I can resend one
> with -M if needed. Let me know
>
>   arch/arm/configs/omap3430_sdp3430_per_uart_defconfig |  216 -------------------
>   arch/arm/configs/omap3530_beagle_per_uart_defconfig  |  215 ------------------
>   arch/arm/configs/omap3_beagle_defconfig              |  215 ++++++++++++++++++
>   arch/arm/configs/omap_3430sdp_defconfig              |  216 +++++++++++++++++++
>   4 files changed, 431 insertions(+), 431 deletions(-)
>
> Index: barebox/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
> ===================================================================
> --- barebox.orig/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
> +++ /dev/null


NAK. The reason for using UART3 was to allow barebox to be used for 
peripheral downloads over uart3. barebox builds are tiny enough to use 
it as 2nd images. there are recovery tools that use this configuration. 
I would recommend creating a new defconfig and adding additional help 
modes in them instead.

Regards,
Nishanth Menon


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
