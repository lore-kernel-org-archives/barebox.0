Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwpG1-0005zk-Aq
 for barebox@lists.infradead.org; Mon, 03 Sep 2018 13:51:27 +0000
Date: Mon, 3 Sep 2018 15:50:55 +0200
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20180903135055.zcumxk3m347kyklw@pengutronix.de>
References: <20180902212123.16405-1-r.hieber@pengutronix.de>
 <20180902212123.16405-2-r.hieber@pengutronix.de>
 <20180903044657.GA8720@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180903044657.GA8720@ravnborg.org>
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
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

On Mon, Sep 03, 2018 at 06:46:57AM +0200, Sam Ravnborg wrote:
> Hi Roland.
> 
> On Sun, Sep 02, 2018 at 11:21:20PM +0200, Roland Hieber wrote:
> > From: Roland Hieber <rohieb@rohieb.name>
> > 
> > Fix a warning while compiling with GCC 5.4.0 (OSELAS.Toolchain 2016.02):
> > 
> >     drivers/pinctrl/imx-iomux-v3.c: In function 'imx_iomux_v3_set_state':
> >     drivers/pinctrl/imx-iomux-v3.c:153:13: warning: 'share_conf_val' may be used uninitialized in this function [-Wmaybe-uninitialized]
> >         conf_val &= ~IMX_PAD_SION;
> >                  ^
> > The relevant code section at line 153 is:
> > 
> > 148:		u32 conf_val = share_conf ?
> > 149:			share_conf_val : be32_to_cpu(*list++);
> > 150:
> > 151:		if (conf_val & IMX_PAD_SION) {
> > 152:			mux_val |= IOMUXC_CONFIG_SION;
> > 153:			conf_val &= ~IMX_PAD_SION;
> > 154:		}
> 
> In this code snip we only see that share_conf_val is used (line 149),
> it is not assigned.
> So we do not really see the context of your message in the code snip.
> 
> 	Sam

Thank you for your feedback. I took the opportunity and had a closer
look at the code. Here is the full context of the file from before the
patch:

   83 static int imx_iomux_v3_set_state(struct pinctrl_device *pdev, struct device_node *np)
   84 {
   85         struct imx_iomux_v3 *iomux = container_of(pdev, struct imx_iomux_v3, pinctrl);
   86         const __be32 *list;
   87         const bool share_conf = iomux->flags & SHARE_CONF;
   88         int npins, size, i, fsl_pin_size;
   89         const char *name;
   90         u32 share_conf_val;
[ this is the line that was patched to say "u32 share_conf_val = 0;" ]
   91 
   92         dev_dbg(iomux->pinctrl.dev, "set state: %s\n", np->full_name);
   93 
   94         if (share_conf) {
   95                 u32 drive_strength, slew_rate;
   96                 int ret;
   97 
   98                 fsl_pin_size = SHARE_CONF_FSL_PIN_SIZE;
   99                 name = "pinmux";
  100 
  101                 ret = of_property_read_u32(np, "drive-strength",
  102                                            &drive_strength);
  103                 if (ret)
  104                         return ret;
  105 
  106                 ret = of_property_read_u32(np, "slew-rate", &slew_rate);
  107                 if (ret)
  108                         return ret;
  109 
  110                 share_conf_val =
  111                         FIELD_PREP(SHARE_CONF_PAD_CTL_DSE, drive_strength) |
  112                         FIELD_PREP(SHARE_CONF_PAD_CTL_SRE, slew_rate);
  113 
  114                 if (of_get_property(np, "drive-open-drain", NULL))
  115                         share_conf_val |= SHARE_CONF_PAD_CTL_ODE;
  116 
  117                 if (of_get_property(np, "input-schmitt-enable", NULL))
  118                         share_conf_val |= SHARE_CONF_PAD_CTL_HYS;
  119 
  120                 if (of_get_property(np, "input-enable", NULL))
  121                         share_conf_val |= IMX_PAD_SION;
  122 
  123                 if (of_get_property(np, "bias-pull-up", NULL))
  124                         share_conf_val |= SHARE_CONF_PAD_CTL_PUE;
  125         } else {
  126                 fsl_pin_size = FSL_PIN_SIZE;
  127                 name = "fsl,pins";
  128         }
  129 
  130         list = of_get_property(np, name, &size);
  131         if (!list)
  132                 return -EINVAL;
  133 
  134         if (!size || size % fsl_pin_size) {
  135                 dev_err(iomux->pinctrl.dev, "Invalid fsl,pins property in %s\n",
  136                                 np->full_name);
  137                 return -EINVAL;
  138         }
  139 
  140         npins = size / fsl_pin_size;
  141 
  142         for (i = 0; i < npins; i++) {
  143                 u32 mux_reg = be32_to_cpu(*list++);
  144                 u32 conf_reg = be32_to_cpu(*list++);
  145                 u32 input_reg = be32_to_cpu(*list++);
  146                 u32 mux_val = be32_to_cpu(*list++);
  147                 u32 input_val = be32_to_cpu(*list++);
  148                 u32 conf_val = share_conf ?
  149                         share_conf_val : be32_to_cpu(*list++);
  150 

The compiler complains because in line 148 conf_val is assigned to a
value that depends on the value of share_conf_val, which in turn is only
initialised in line 110, inside the if branch that depends on
share_conf. However, conf_val is only set to share_conf_val in the same
condition depending on share_conf, so it is guaranteed that
share_conf_val will be initialized when its value is used. I guess GCC 5
doesn't yet have a good enough heuristic to detect that case and warns
unnecessarily.

So if you feel that the (old) compiler is wrong here about the warning,
and the code itself is correct enough, feel free to leave out that patch
from the queue.

 - Roland

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
