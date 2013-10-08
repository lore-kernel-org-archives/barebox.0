Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VTYnn-0002DA-D4
 for barebox@lists.infradead.org; Tue, 08 Oct 2013 15:02:23 +0000
Message-ID: <1381244289.4093.120.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 08 Oct 2013 16:58:09 +0200
In-Reply-To: <20131008164958.56ce43b4@archvile>
References: <20131003171726.096b0daa@archvile>
 <20131003192349.GR32444@ns203013.ovh.net>
 <20131004091739.4debe909@archvile> <20131006103949.GL30088@pengutronix.de>
 <20131007083203.7aa17d5b@archvile> <20131007064111.GT30088@pengutronix.de>
 <20131007115735.7301cc65@archvile> <20131007201936.GW30088@pengutronix.de>
 <20131008090229.051cd853@archvile>
 <1381218305.4093.54.camel@weser.hi.pengutronix.de>
 <20131008111327.681f1149@archvile>
 <1381225164.4093.77.camel@weser.hi.pengutronix.de>
 <20131008154748.7d9d6752@archvile>
 <1381241476.4093.114.camel@weser.hi.pengutronix.de>
 <20131008164958.56ce43b4@archvile>
Mime-Version: 1.0
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
Subject: Re: /dev/disk0 vs /dev/mmc0
To: David Jander <david.jander@protonic.nl>
Cc: barebox@lists.infradead.org

Am Dienstag, den 08.10.2013, 16:49 +0200 schrieb David Jander:
[...]
> 
> For DRAM clock scaling, only the clock divider or PLL should ever be
> changed. Any other parameters should stay the same. If this has really been
> done, I'd like to see it...
> DRAM calibration settings have to do with signal propagation on the PCB. That
> has nothing to do with clock speeds or -settings.
> 
Take a look at the Tegra20 Colibri in the mainline kernel. The DT there
contains optimized timing register settings for every DRAM clock
frequency. Those are loaded into a shadow registerset in the
memory-controller that latches the settings into the live registers at
the same moment the clock divider is changed.

My understanding of the docs says a similar thing thing is possible on
i.MX6, although no one has done such a thing there up until now.

> Ok, now can we both please go back to work?

Absolutely.

Regards,
Lucas

-- 
Pengutronix e.K.                           | Lucas Stach                 |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-5076 |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
