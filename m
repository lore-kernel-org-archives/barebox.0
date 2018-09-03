Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwgli-0003ZS-Cl
 for barebox@lists.infradead.org; Mon, 03 Sep 2018 04:47:19 +0000
Date: Mon, 3 Sep 2018 06:46:57 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180903044657.GA8720@ravnborg.org>
References: <20180902212123.16405-1-r.hieber@pengutronix.de>
 <20180902212123.16405-2-r.hieber@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180902212123.16405-2-r.hieber@pengutronix.de>
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
Subject: Re: [PATCH 1/4] pinctrl: imx-iomux-v3: fix compiler warning
To: Roland Hieber <r.hieber@pengutronix.de>
Cc: barebox@lists.infradead.org, Roland Hieber <rohieb@rohieb.name>

Hi Roland.

On Sun, Sep 02, 2018 at 11:21:20PM +0200, Roland Hieber wrote:
> From: Roland Hieber <rohieb@rohieb.name>
> 
> Fix a warning while compiling with GCC 5.4.0 (OSELAS.Toolchain 2016.02):
> 
>     drivers/pinctrl/imx-iomux-v3.c: In function 'imx_iomux_v3_set_state':
>     drivers/pinctrl/imx-iomux-v3.c:153:13: warning: 'share_conf_val' may be used uninitialized in this function [-Wmaybe-uninitialized]
>         conf_val &= ~IMX_PAD_SION;
>                  ^
> The relevant code section at line 153 is:
> 
> 148:		u32 conf_val = share_conf ?
> 149:			share_conf_val : be32_to_cpu(*list++);
> 150:
> 151:		if (conf_val & IMX_PAD_SION) {
> 152:			mux_val |= IOMUXC_CONFIG_SION;
> 153:			conf_val &= ~IMX_PAD_SION;
> 154:		}

In this code snip we only see that share_conf_val is used (line 149),
it is not assigned.
So we do not really see the context of your message in the code snip.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
