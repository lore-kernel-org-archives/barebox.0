Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kN9h3-0008Ey-Ux
 for barebox@lists.infradead.org; Tue, 29 Sep 2020 07:04:58 +0000
Date: Tue, 29 Sep 2020 09:04:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200929070456.GS11648@pengutronix.de>
References: <20200925234315.453448-1-trent.piepho@synapse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200925234315.453448-1-trent.piepho@synapse.com>
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
Subject: Re: [PATCH v2 1/4] aiodev: Name channels with device instance name
To: Trent Piepho <trent.piepho@synapse.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 25, 2020 at 04:43:12PM -0700, Trent Piepho wrote:
> When dynamically assigning device names, an aiodev's name will be
> "aiodev" and an index, not part of the name string itself, will be
> allocated dynamically.  These are combined to register a device with a
> name like "aiodev0" or "aiodev1".
> 
> The shell environment variables use the device name, so one might use
> "${aiodev0.in_value0_mV}" and "${aiodev1.in_value0_mV}".
> 
> However, the channel names that are used with aiochannel_get_by_name()
> just use the aiodev's name and channel name.  So channel 0 of the 1st
> aiodev would be "aiodev.in_value0_mV" and the 2nd aiodev would use the
> same name.
> 
> Change the channel naming to use the device instance name, e.g.
> "aiodev0", rather than the aiodev's base name.  This makes the names
> used aiochannel_get_by_name() match the environment variable names and
> also avoids duplicate names with more than one dynamically allocated
> aiodev.
> 
> Rename aiochannel_get_by_name() to aiochannel_by_name() so that any out
> of tree boards that use it will fail to compile, since they now need to
> pass in a different name.
> 
> Signed-off-by: Trent Piepho <trent.piepho@synapse.com>
> ---
> Changes in v2:
>   * Rename aiochannel_get_by_name()

Applied all, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
