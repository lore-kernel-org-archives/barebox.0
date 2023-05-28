Delivery-date: Sun, 28 May 2023 07:12:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q38i7-00HFkY-Bn
	for lore@lore.pengutronix.de; Sun, 28 May 2023 07:12:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q38i4-0005vP-Dl
	for lore@pengutronix.de; Sun, 28 May 2023 07:12:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WyzmS7PEUkYQ+ckvtReOeKLjItL1kjXCNmLB7H8hMug=; b=YaNS8sga2cwx60vXLWpv3eLlY/
	NV9qXBz3MGoG4mg56R5NvYzmBw3oveDyPMtktLvnoAWWaSYe7NVIrUvSqG7zboznXGEZnYlxXb2g+
	pn/gH8OXdzAf7jJYnORh02JnffVSREKvMRNEMLR0KbxmwYIatsM/uzIepo92auchJtziH9w4p7O4R
	dEA5GdysSydGNr0wjDl8iWabmQl1sqklCMfe4K4BnPzrqlK8uedcCZinK4TTnM3W7OzXew7syx/Re
	z28MfDgbL5IjF0rb/Ee9L/9Mc1GkIGhWk/rdKk8NcXvnXtnfgp6ssEvGF6RwW0AQQEPwM0gVZYmuB
	kz85pEAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q38gr-006wcW-2Z;
	Sun, 28 May 2023 05:11:37 +0000
Received: from out-33.mta0.migadu.com ([2001:41d0:1004:224b::21])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q38go-006wbe-1V
	for barebox@lists.infradead.org;
	Sun, 28 May 2023 05:11:36 +0000
Date: Sun, 28 May 2023 15:10:58 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1685250687;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=WyzmS7PEUkYQ+ckvtReOeKLjItL1kjXCNmLB7H8hMug=;
	b=eW9f1CKAvzHNVRUw1fHnYpkOrZMnGTVySSmOzBCdR6OVaWIMpyiRIHXzGdzE1XOGNtLq70
	dXeibldPs/eDzXA3AuivXwP2clZMk9UIL9zCmIWX43gXLVFZ4B7+Fw+qiyD1iKNCWYVN8j
	QVF+lzihYJBrdp7/izVvQWX2Qsomou0l5dz3u0ySJddXR9f0JPBxHnaesen20uu4Ek755S
	AM185M6+dqzTfT9YuTrpEnXKjbNs9zb09MM/ZikoLi0JXrbwkH8zCoyVcZSAQVkK+8NAJP
	watIHpPy7ZMHCpxrM2X2NKkJ36atqN63q6MdRvD7q0eAAvIo+Bac6XcXIkyX8Q==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org
Message-ID: <ZHLiYku831e8Igpx@titan>
References: <20230527232409.21925-1-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230527232409.21925-1-marc@cpdesign.com.au>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230527_221135_240742_22045E16 
X-CRM114-Status: GOOD (  17.63  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/1] commands: add pwm manipulation command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi, not really a Barebox developer but I figured I might chime in.

On Sun, May 28, 2023 at 09:24:09AM +1000, Marc Reilly wrote:
> This introduces a command to set parameters for a pwm device.
> 
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> ---

...

> +	if ((n < 0) && !devname) {
> +		printf(" need to specify a device\n");
> +		return COMMAND_ERROR_USAGE;
> +	}
> +	if ((freq == 0) || (period == 0)) {
> +		printf(" period or freqency needs to be non-zero\n");
> +		return COMMAND_ERROR_USAGE;
> +	}
> +
> +	if (!devname) {
> +		sprintf(namebuf, "pwm%d", n);
> +	} else {
> +		strcpy(namebuf, devname);
> +	}

Is devname capped to namebuf length? It might be better refer to devname
instead of namebuf and point devname to namebuf when you use namebuf, otherwise
point it to the the optarg.

Is it even worth supporting refering by number instead of just having scripts
type pwmX?

> +	pwm = pwm_request(namebuf);
> +	if (!pwm) {
> +		printf("pwm device %s not found\n", namebuf);

No space at the start?

> +		return -ENODEV;
> +	}
> +
> +	pwm_get_state(pwm, &state);
> +
> +	if ((state.period_ns == 0)
> +			&& (freq < 0) && (duty < 0) && (period < 0)) {
> +		printf(" need to know some timing info; freq or dury/period\n");

No pwm_free?

> +		return COMMAND_ERROR_USAGE;
> +	}
> +
> +	if (polarity >= 0)
> +		state.polarity = polarity;
> +
> +	/* period */
> +	if (freq > 0) {
> +		state.p_enable = true;
> +		state.period_ns = HZ_TO_NANOSECONDS(freq);
> +		if (width < 0) {
> +			width = 50;
> +		}
> +	} else if (period > 0) {
> +		state.p_enable = true;
> +		state.period_ns = period;
> +	}
> +
> +	/* duty */
> +	if (width >= 0) {
> +		if (width > 100)
> +			width = 100;
> +
> +		pwm_set_relative_duty_cycle(&state, width, 100);
> +	} else if (duty >= 0) {
> +		if (duty > state.period_ns)
> +			printf(" warning: duty_ns is greater than period\n");
> +
> +		state.duty_ns = duty;
> +	}

It might be worth moving the width and duty checks to up with the opt parsing
and make a width > 100 and error.

Jookia.


