Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOp45-0000wH-VR
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 11:46:50 +0000
Date: Mon, 30 Apr 2012 13:46:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120430114648.GH4141@pengutronix.de>
References: <1335519145-12349-1-git-send-email-jbe@pengutronix.de>
 <1335519145-12349-8-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1335519145-12349-8-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [PATCH 7/7] netX: add the 'th link' platform
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Apr 27, 2012 at 11:32:25AM +0200, Juergen Beisert wrote:
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> ---
> diff --git a/arch/arm/tools/mach-types b/arch/arm/tools/mach-types
> index ff97af4..f958ee6 100644
> --- a/arch/arm/tools/mach-types
> +++ b/arch/arm/tools/mach-types
> @@ -3963,3 +3963,4 @@ pcats_9307_type_a	MACH_PCATS_9307_TYPE_A	PCATS_9307_TYPE_A	4008
>  pcats_9307_type_o	MACH_PCATS_9307_TYPE_O	PCATS_9307_TYPE_O	4009
>  pcats_9307_type_r	MACH_PCATS_9307_TYPE_R	PCATS_9307_TYPE_R	4010
>  streamplug		MACH_STREAMPLUG		STREAMPLUG		4011
> +th_link_eth		MACH_THLINK_ETH	 	THLINK_ETH		4156

No manual patching of this file please.

I applied the other patches from this series.

Thanks
 Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
