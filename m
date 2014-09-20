Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x233.google.com ([2a00:1450:400c:c00::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XVOOz-0002o3-UW
 for barebox@lists.infradead.org; Sat, 20 Sep 2014 17:24:54 +0000
Received: by mail-wg0-f51.google.com with SMTP id m15so985055wgh.10
 for <barebox@lists.infradead.org>; Sat, 20 Sep 2014 10:24:32 -0700 (PDT)
Message-ID: <541DB84C.2020805@gmail.com>
Date: Sat, 20 Sep 2014 19:24:28 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1410985364-7105-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1410985364-7105-7-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1410985364-7105-7-git-send-email-sebastian.hesselbarth@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 6/6] ARM: Add mvebu_defconfig
Cc: barebox@lists.infradead.org

On 09/17/2014 10:22 PM, Sebastian Hesselbarth wrote:
> From: Sascha Hauer <s.hauer@pengutronix.de>
> 
> This adds a mvebu_defconfig which enables all mvebu based boards.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Acked-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> ---
...
> ---
>  arch/arm/configs/mvebu_defconfig | 123 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 123 insertions(+)
>  create mode 100644 arch/arm/configs/mvebu_defconfig
> 
> diff --git a/arch/arm/configs/mvebu_defconfig b/arch/arm/configs/mvebu_defconfig
> new file mode 100644
> index 000000000000..26be4ecfe022
> --- /dev/null
> +++ b/arch/arm/configs/mvebu_defconfig
> @@ -0,0 +1,123 @@
[...]
> +CONFIG_MMU=y

Sascha,

can you please drop CONFIG_MMU for mvebu_defconfig for now? I did some
more testing today and realized that Armada 370 and XP are CPU_V7 but
have a different cache controller. We currently have no support for
Marvell Aurora and therefore flush/inv ranges will not work and break
any driver using dma_flush/inv_range.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
