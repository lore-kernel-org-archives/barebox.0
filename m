Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNvaQ-0001lK-VN
 for barebox@lists.infradead.org; Thu, 01 Oct 2020 10:13:19 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kNvaO-0004I4-Hn
 for barebox@lists.infradead.org; Thu, 01 Oct 2020 12:13:16 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>) id 1kNvaO-00054I-89
 for barebox@lists.infradead.org; Thu, 01 Oct 2020 12:13:16 +0200
Date: Thu, 1 Oct 2020 12:13:16 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20201001101316.ezjwn6oe3rhwoxnf@pengutronix.de>
References: <20200930084716.4200-1-m.felsch@pengutronix.de>
 <20200930084716.4200-6-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200930084716.4200-6-m.felsch@pengutronix.de>
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
Subject: Re: [PATCH v2 5/8] common: add initial barebox deep-probe support
To: barebox@lists.infradead.org

Hi,

On 20-09-30 10:47, Marco Felsch wrote:

> +#define BAREBOX_DEEP_PROBE_ENABLE(_entry,_compatible)			\
> +	const struct deep_probe_entry _DEEP_PROBE_ENTRY(_entry)		\
> +        __attribute__ ((unused,section (".barebox_deep_probe_" __stringify(_entry)))) = { \
> +		.compatible = _compatible,				\
> +	}

I forgot to change this to use the __UNIQUE_ID. I will send a fixup if
that is the the only finding in this round, if it is okay for all.

Regards,
  Marco


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
