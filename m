Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwvFM-0000K7-1a
 for barebox@lists.infradead.org; Mon, 03 Sep 2018 20:14:53 +0000
Date: Mon, 3 Sep 2018 22:14:34 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180903201434.GA981@ravnborg.org>
References: <20180902212123.16405-1-r.hieber@pengutronix.de>
 <20180902212123.16405-2-r.hieber@pengutronix.de>
 <20180903044657.GA8720@ravnborg.org>
 <20180903135055.zcumxk3m347kyklw@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180903135055.zcumxk3m347kyklw@pengutronix.de>
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
Cc: barebox@lists.infradead.org

Hi Roland.

> > 
> > In this code snip we only see that share_conf_val is used (line 149),
> > it is not assigned.
> > So we do not really see the context of your message in the code snip.
> > 
> > 	Sam
> 
> Thank you for your feedback. I took the opportunity and had a closer
> look at the code. Here is the full context of the file from before the
> patch:
> 
>    83 static int imx_iomux_v3_set_state(struct pinctrl_device *pdev, struct device_node *np)
>    84 {
     ...
>    90         u32 share_conf_val;
>    91 
     ...
>    94         if (share_conf) {
     ...
>   110                 share_conf_val =
>   111                         FIELD_PREP(SHARE_CONF_PAD_CTL_DSE, drive_strength) |
>   112                         FIELD_PREP(SHARE_CONF_PAD_CTL_SRE, slew_rate);
    ...
>   142         for (i = 0; i < npins; i++) {
    ...
>   148                 u32 conf_val = share_conf ?
>   149                         share_conf_val : be32_to_cpu(*list++);

The comment was only that despite your effort the changelog
did not provide enough context.
Above I have provided enough context to your otherwise nice explanation.

> So if you feel that the (old) compiler is wrong here about the warning,
> and the code itself is correct enough, feel free to leave out that patch
> from the queue.
The patch is IMO fine, but the changelog could be better.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
