Delivery-date: Mon, 20 Jul 2026 10:34:39 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wljSQ-000q2t-2n
	for lore@lore.pengutronix.de;
	Mon, 20 Jul 2026 10:34:39 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C315A201FA8
	for <lore@pengutronix.de>; Mon, 20 Jul 2026 10:34:38 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iJHPp76f;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=L94TvOjy;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OEh/FpzTRC+ryP4egomuI43gUnPRHfZyTfW5NpuoG0E=; b=iJHPp76fyU2lDMcwMYQM0XMWeC
	vVBOzXnld3bcLT6UQK0kCY5aLjN/QNSPto8vnVh7reEu68bc94Vcd6lpnEENKNzdqmCWahJ1EOugK
	JVMSTPuuJZOc9OAKtb80eFmfWVprW8PE+zX4ABgbA2MOdi+Ha1eKMn37LRoLl7yyqtm9vdyqTiLsA
	pi62WMAgM+l+TNl+LS16voOj2ysaeeOonLlDw760BuSTFrmAocsPb1uffqjUQZ9zn6yzv3135jyUe
	OAjBBnN2LK13dI8cGYi3CNylWfYTpFfjJINhsvBI7Ti71N1gK+O75um8ywxINNpTkZLTRpOCLUB8o
	cadJyOSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wljQx-00000006Cf9-3G6Y;
	Mon, 20 Jul 2026 08:33:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wljQu-00000006CeZ-472F
	for barebox@bombadil.infradead.org;
	Mon, 20 Jul 2026 08:33:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=OEh/FpzTRC+ryP4egomuI43gUnPRHfZyTfW5NpuoG0E=; b=L94TvOjyeWNnJrM6YlsQzpr9A6
	g5nUzS84liqNKL3WsQnkPNlvtlADFyusUD6kSSWlzcRZReVfo38WaN0pnhFOQq9LM961VTtbDjsHA
	DgebbQi/MgaO5N6WokflCczuUnd0+soor+q+qNftkBFFVVghlvxqK3m8W+2+HmjfCcV30ZtwFN5Y+
	yI7p83kdrPJ4vBfivLtWIuy7s6v9aUUgnNKxDmYkjNyj3/Ia2oIjC7BNmYmNvtCLQKu5JI06x4D/8
	oqjaUXS+hFV8ZWMu+sk4X3n+4aBU6t4QaNRumnGG2qMFdo0fu+8K8kfDPv5XuAby4bzpEDNpEYWAT
	U2R5xhbw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wljQs-0000000GONe-0xZ0
	for barebox@lists.infradead.org;
	Mon, 20 Jul 2026 08:33:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wljQn-0007jj-Jl; Mon, 20 Jul 2026 10:32:57 +0200
Message-ID: <4402a71c-d1fd-4dd1-bbff-74cf52758ae3@pengutronix.de>
Date: Mon, 20 Jul 2026 10:32:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] video: backlicht-pwm: parse num-interpolated-steps
To: Ingo Reitz <9l@9lo.re>, barebox@lists.infradead.org
References: <20260712213724.186498-1-9l@9lo.re>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260712213724.186498-1-9l@9lo.re>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_093302_483512_A62A22EC 
X-CRM114-Status: GOOD (  28.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 7/12/26 23:38, Ingo Reitz wrote: > Port the parsing logic
    for num-interpolated-steps from linux, which populates > brightness-levels
    between 2 brightness level by linear interpolation. > This is us [...] 
 
 Content analysis details:   (0.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 DMARC_MISSING          Missing DMARC policy
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-6.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:9l@9lo.re,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: C315A201FA8
X-Stat-Signature: ereio6kq1459ibe98pagoeenowwr41kr

On 7/12/26 23:38, Ingo Reitz wrote:
> Port the parsing logic for num-interpolated-steps from linux, which populates
> brightness-levels between 2 brightness level by linear interpolation.
> This is useful if the amount of brightness levels exeeds what can
> practically can be written into the devicetree array.
> 
> Signed-off-by: Ingo Reitz <9l@9lo.re>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Title (s/backlight/backlight/) can be fixed up on apply time perhaps? 

Cheers,
Ahmad

> ---
>  drivers/video/backlight-pwm.c | 76 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 75 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
> index 14fad55637..581fa0237c 100644
> --- a/drivers/video/backlight-pwm.c
> +++ b/drivers/video/backlight-pwm.c
> @@ -12,6 +12,7 @@
>  #include <linux/err.h>
>  #include <of.h>
>  #include <regulator.h>
> +#include <linux/device.h>
>  #include <linux/gpio/consumer.h>
>  #include <linux/math64.h>
>  
> @@ -101,7 +102,9 @@ static int pwm_backlight_parse_dt(struct device *dev,
>  {
>  	struct device_node *node = dev->of_node;
>  	struct property *prop;
> -	int length;
> +	unsigned int length;
> +
> 	unsigned int num_steps = 0;
> +	unsigned int *table;
>  	u32 value;
>  	int ret, i;
>  
> @@ -134,6 +137,77 @@ static int pwm_backlight_parse_dt(struct device *dev,
>  		if (ret < 0)
>  			return ret;
>  
> +		/*
> +		 * This property is optional, if is set enables linear
> +		 * interpolation between each of the values of brightness levels
> +		 * and creates a new pre-computed table.
> +		 */
> +		of_property_read_u32(node, "num-interpolated-steps",
> +				     &num_steps);
> +
> +		if (num_steps) {
> +			unsigned int num_input_levels = length;
> +			unsigned int i;
> +			u32 x1, x2, x, dx;
> +			u32 y1, y2;
> +			s64 dy;
> +
> +			/*
> +			 * Make sure that there is at least two entries in the
> +			 * brightness-levels table, otherwise we can't interpolate
> +			 * between two points.
> +			 */
> +			if (num_input_levels < 2) {
> +				dev_err(dev, "can't interpolate\n");
> +				return -EINVAL;
> +			}
> +
> +			/*
> +			 * Recalculate the number of brightness levels, now
> +			 * taking in consideration the number o
> f interpolated
> +			 * steps between two levels.
> +			 */
> +			length = (num_input_levels - 1) * num_steps + 1;
> +			dev_dbg(dev, "new number of brightness levels: %d\n",
> +				length);
> +
> +			/*
> +			 * Create a new table of brightness levels with all the
> +			 * interpolated steps.
> +			 */
> +			table = devm_kcalloc(dev, length, sizeof(*table),
> +					     GFP_KERNEL);
> +			if (!table)
> +				return -ENOMEM;
> +			/*
> +			 * Fill the interpolated table[x] = y
> +			 * by draw lines between each (x1, y1) to (x2, y2).
> +			 */
> +			dx = num_steps;
> +			for (i = 0; i < num_input_levels - 1; i++) {
> +				x1 = i * dx;
> +				x2 = x1 + dx;
> +				y1 = pwm_backlight->levels[i];
> +				y2 = pwm_backlight->levels[i + 1];
> +				dy = (s64)y2 - y1;
> +
> +				for (x = x1; x < x2; x++) {
> +					table[x] =
> +						y1 + div_s64(dy * (x - x1), dx);
> +				}
> +			}
> +			/* Fill in the last point, since no line starts here. */
> +			table[x2] = y2;
> +
> +			/*
> +			 * As we use interpolation lets remove current
> 
> +			 * brightness levels table and replace for the
> +			 * new interpolated table.
> +			 */
> +			devm_kfree(dev, pwm_backlight->levels);
> +			pwm_backlight->levels = table;
> +		}
> +
>  		pwm_backlight->backlight.brightness_max = length - 1;
>  
>  		for (i = 0; i < length; i++)


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


