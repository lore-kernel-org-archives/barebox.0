Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VsSos-0002SE-8N
 for barebox@lists.infradead.org; Mon, 16 Dec 2013 07:42:27 +0000
Date: Mon, 16 Dec 2013 08:41:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131216074158.GP24559@pengutronix.de>
References: <1387119725-6803-1-git-send-email-antonynpavlov@gmail.com>
 <1387119725-6803-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1387119725-6803-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [JUST RFC] ARM: DIGIC: add csrc-dummy
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Dec 15, 2013 at 07:02:05PM +0400, Antony Pavlov wrote:
> The clocksource csrc-timer driver that uses DIGIC
> hardware TIMER2 perfectrly works on Canon A1100,
> but does not works on Canon EOS 600D.
> IMHO we need additional timer initialisation.
> 
> This patch introduces a quick-and-dirty termporary
> solution for this situation: a clocksource driver that
> does not use any hardware at all.
> 
> Also this driver is very handy for running barebox
> on Magic Lantern EOS qemu-based emulator as
> the emulator does not realize timer counter register at all!
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
> +static uint64_t dummy_cs_read(void)
> +{
> +	dummy_counter += 2000;
> +	return dummy_counter;
> +}

I also played with the same approach. In my case it was more a fallback
when the initialization order was wrong so that the time functions were
used before the real clocksource was initialized. Without it time never
advanced and every udelay() locked up the system (or it crashed because
we didn't check for the clocksource being NULL, can't remember).

Maybe it would be possible to add this clocksource unconditionally on
every build, but let a real clocksource take over.

To do this and not silently fall back to a dummy console I suggest a:

static uint64_t dummy_cs_read(void)
{
	static int first;

	if (!first) {
		pr_warn("Warning: Using dummy clocksource\n");
		first = 0;
	}

	dummy_counter += 2000;
	return dummy_counter;
}

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
