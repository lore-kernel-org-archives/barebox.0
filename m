Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22d.google.com ([2a00:1450:400c:c03::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W5JYD-0008Ku-Ah
 for barebox@lists.infradead.org; Mon, 20 Jan 2014 18:26:22 +0000
Received: by mail-we0-f173.google.com with SMTP id t60so7197659wes.18
 for <barebox@lists.infradead.org>; Mon, 20 Jan 2014 10:25:55 -0800 (PST)
Date: Mon, 20 Jan 2014 19:25:50 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140120182549.GA29762@omega>
References: <1390224236-11032-1-git-send-email-s.hauer@pengutronix.de>
 <1390224236-11032-3-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1390224236-11032-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 2/3] ARM: dts: i.MX53: tqma53: Add barebox specifics
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Mon, Jan 20, 2014 at 02:23:55PM +0100, Sascha Hauer wrote:
> - add chosen node with
>   - environment
>   - linux,stdout-path
> - add dsr value to eMMC
> - add provide-mac-address property to iim node
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/dts/imx53-mba53.dts   | 17 +++++++++++++++++
>  arch/arm/dts/imx53-tqma53.dtsi | 15 ++++++++++++++-
>  2 files changed, 31 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/dts/imx53-mba53.dts b/arch/arm/dts/imx53-mba53.dts
> index a630902..43bb12c 100644
...
> +
>  	memory {
> -		reg = <0x70000000 0x40000000>; /* Up to 1GiB */
> +		reg = <0x70000000 0x0>; /* Up to 1GiB */

Is this change correct? You don't mention it in commit-msg and it confusing
me a little bit to set this zero. :-)

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
