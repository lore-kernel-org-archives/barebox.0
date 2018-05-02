Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fDpKq-0007Or-9f
 for barebox@lists.infradead.org; Wed, 02 May 2018 10:50:10 +0000
Date: Wed, 2 May 2018 12:49:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180502104956.rcrnkvcwqk3fy5qc@pengutronix.de>
References: <1524222061-8825-1-git-send-email-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1524222061-8825-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: Re: [PATCH] commands: of_display_timings: Add simple-panel support
To: Stefan Riedmueller <s.riedmueller@phytec.de>
Cc: barebox@lists.infradead.org

Hi Stefan,

On Fri, Apr 20, 2018 at 01:01:01PM +0200, Stefan Riedmueller wrote:
> Display timings can now be set with simple-panel method which selects
> the required timings by the compatible of the simple panel devicetree
> node.
> 
> This patch adds an option to set simple panel timings with the
> of_display_timings command by setting the compatible of the display node.
> The options -P and -c were implemented. The -P option requires the display
> node path as argument and the -c option requires the compatible to set.
> 
> This has one downside. The available simple panel timings cannot be
> listed since the timings are defined in the kernel. Account for this in the
> help text.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
>  commands/of_display_timings.c | 65 ++++++++++++++++++++++++++++++++++++++++---
>  1 file changed, 61 insertions(+), 4 deletions(-)

This patch seems to be a way to manipulate a device tree property in the
Linux device tree. How about adding a new option to the of_property
command which would register a of_fixup instead of doing the operation
now?

Like this:

of_property -f -s /path/to/node compatible vendor,foo-display

> +		case 'c':
> +			compatible = optarg;
> +			break;
>  		case 'S':
>  			timingpath = xzalloc(strlen(optarg) + 1);
>  			strcpy(timingpath, optarg);

xstrdup() is what you want here.

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
