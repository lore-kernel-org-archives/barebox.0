Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo3.mail-out.ovh.net ([46.105.75.36]
 helo=mo3.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X4RGj-0006Cv-NM
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 09:00:58 +0000
Received: from mail622.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id E0772FFA10A
 for <barebox@lists.infradead.org>; Tue,  8 Jul 2014 11:00:35 +0200 (CEST)
Date: Tue, 8 Jul 2014 11:04:28 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140708090428.GD19147@ns203013.ovh.net>
References: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
 <1404809417-21477-17-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1404809417-21477-17-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 16/21] Documentation: Add EFI documentation
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> +  diff --git a/MdeModulePkg/Universal/DebugSupportDxe/X64/AsmFuncs.S b/MdeModulePkg/Universal/DebugSupportDxe/X64/AsmFuncs.S
> +  index 9783ec6..13fc06c 100644
> +  --- a/MdeModulePkg/Universal/DebugSupportDxe/X64/AsmFuncs.S
> +  +++ b/MdeModulePkg/Universal/DebugSupportDxe/X64/AsmFuncs.S
> +  @@ -280,7 +280,7 @@ ExtraPushDone:
> +
> +                   mov     %ds, %rax
> +                   pushq   %rax
> +  -                movw    %es, %rax
> +  +                mov     %es, %rax^M
horrible windows stuff ;-)
> +                   pushq   %rax
> +                   mov     %fs, %rax
> +                   pushq   %rax
> +
> diff --git a/Documentation/glossary.rst b/Documentation/glossary.rst
> index 8bad7dc..106dce9 100644
> --- a/Documentation/glossary.rst
> +++ b/Documentation/glossary.rst
> @@ -16,3 +16,6 @@ Glossary
>  
>     PBL
>        Pre BootLoader image
> +
> +   ESP
> +      EFI System Partition
> -- 
> 2.0.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
