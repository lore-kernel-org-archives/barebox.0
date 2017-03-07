Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl9kU-0003SI-1R
 for barebox@lists.infradead.org; Tue, 07 Mar 2017 07:41:36 +0000
Date: Tue, 7 Mar 2017 08:41:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170307074112.j6mz6i7ffttmcja4@pengutronix.de>
References: <20170303123219.GD4120@mail.ovh.net>
 <1488544445-20105-1-git-send-email-plagnioj@jcrosoft.com>
 <1488544445-20105-8-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1488544445-20105-8-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 8/9] efi: clocksoure: add EFI event timer
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 03, 2017 at 01:34:04PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> with this we can be hw generic
> 
> If the EFI implement timestamp protocol we could use instead of event
> but even EDK2 Never Ever compile it for any target.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> +	freq = 1000 * 1000;
> +	if (ticks_freq() < 800 * 1000) {
> +		uint64_t nb_100ns;
> +
> +		freq = ticks_freq_x86();
> +		nb_100ns = 10 * 1000 * 1000 / freq;
> +		pr_warn("EFI Event timer too slow freq = %llu Hz\n", freq);

Applied this series for now. I weakened this message somewhat:

		pr_warn("EFI Event timer slow, freq = %lluHz\n", freq);

As this is not really an error, only an information one might want to
know.

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
