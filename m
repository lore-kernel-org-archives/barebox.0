Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZpnJ-0006uf-1O
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 05:23:18 +0000
References: <1574816871-3742-1-git-send-email-duhuanpeng@loongson.cn>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <eebcf084-de0d-c491-246a-1cd5a1aaae06@rempel-privat.de>
Date: Wed, 27 Nov 2019 06:22:49 +0100
MIME-Version: 1.0
In-Reply-To: <1574816871-3742-1-git-send-email-duhuanpeng@loongson.cn>
Content-Language: en-US
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
Subject: Re: [PATCH] MIPS: Makefile: minor codingstyle fix
To: Du Huanpeng <duhuanpeng@loongson.cn>, barebox@lists.infradead.org

Hi,

please, if you send new version of some patch, add version number to it. It should look like this:
[PATCH v3] MIPS: Makefile: minor codingstyle fix

The version can be added automatically by creating the mail with:
git format-patch -v3

Am 27.11.19 um 02:07 schrieb Du Huanpeng:
> it exceeds 80 chararacters per line, but is more readable and
> agrees agrees with the previous lines.
>
> Signed-off-by: Du Huanpeng <duhuanpeng@loongson.cn>
> ---
>  arch/mips/Makefile | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index ee465dc..1c10db5 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -52,9 +52,7 @@ cflags-$(CONFIG_CPU_MIPS32_R1) += $(call cc-option,-march=mips32,-mips32 -U_MIPS
>  cflags-$(CONFIG_CPU_MIPS32_R2) += $(call cc-option,-march=mips32r2,-mips32r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS32) -Wa,-mips32r2 -Wa,--trap
>  cflags-$(CONFIG_CPU_MIPS64_R1) += $(call cc-option,-march=mips64,-mips64 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS64) -Wa,-mips64 -Wa,--trap
>  cflags-$(CONFIG_CPU_MIPS64_R2) += $(call cc-option,-march=mips64r2,-mips64r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS64) -Wa,-mips64r2 -Wa,--trap
> -cflags-$(CONFIG_CPU_LOONGSON1)	+= \
> -	$(call cc-option,-march=mips32r2,-mips32r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS32) \
> -	-Wa,-mips32r2 -Wa,--trap
> +cflags-$(CONFIG_CPU_LOONGSON1) += $(call cc-option,-march=mips32r2,-mips32r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS32) -Wa,-mips32r2 -Wa,--trap
>
>  CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
>
>


--
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
