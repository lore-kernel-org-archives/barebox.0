Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRE5R-0005CU-10
 for barebox@lists.infradead.org; Wed, 02 Oct 2013 04:30:57 +0000
Received: from mail416.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 7539FDC058E
 for <barebox@lists.infradead.org>; Wed,  2 Oct 2013 06:30:30 +0200 (CEST)
Date: Wed, 2 Oct 2013 06:31:56 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131002043156.GN32444@ns203013.ovh.net>
References: <1380663322-25733-1-git-send-email-lisovy@gmail.com>
 <1380663322-25733-2-git-send-email-lisovy@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1380663322-25733-2-git-send-email-lisovy@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/4] i.mx53: voipac: Change machine type identifier
To: Rostislav Lisovy <lisovy@gmail.com>
Cc: barebox@lists.infradead.org, pisa@cmp.felk.cvut.cz

On 23:35 Tue 01 Oct     , Rostislav Lisovy wrote:
> Signed-off-by: Rostislav Lisovy <lisovy@gmail.com>
> 
> 
> diff --git a/arch/arm/tools/mach-types b/arch/arm/tools/mach-types
> index 325513f..b4c8228 100644
> --- a/arch/arm/tools/mach-types
> +++ b/arch/arm/tools/mach-types
> @@ -3314,7 +3314,7 @@ dimm_imx28		MACH_DIMM_IMX28		DIMM_IMX28		3355
>  amk_a4			MACH_AMK_A4		AMK_A4			3356
>  gnet_sgme		MACH_GNET_SGME		GNET_SGME		3357
>  shooter_u		MACH_SHOOTER_U		SHOOTER_U		3358
> -vmx53			MACH_VMX53		VMX53			3359
> +voipac			MACH_MX53_VOIPAC	MX53_VOIPAC		3359
>  rhino			MACH_RHINO		RHINO			3360
>  armlex4210		MACH_ARMLEX4210		ARMLEX4210		3361
>  swarcoextmodem		MACH_SWARCOEXTMODEM	SWARCOEXTMODEM		3362

why that?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
