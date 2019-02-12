Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtT7t-00013Y-G0
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 08:09:13 +0000
Date: Tue, 12 Feb 2019 09:09:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190212080906.5bgldri5gjpjptys@pengutronix.de>
References: <1549898200-32688-1-git-send-email-t.remmet@phytec.de>
 <1549898200-32688-2-git-send-email-t.remmet@phytec.de>
 <20190211154138.GA5683@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190211154138.GA5683@ravnborg.org>
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
Subject: Re: [PATCH 1/7] drivers: bus: Add ti-sysc bus driver
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Teresa Remmet <t.remmet@phytec.de>, barebox@lists.infradead.org

Hi Sam,

On Mon, Feb 11, 2019 at 04:41:38PM +0100, Sam Ravnborg wrote:
> Hi Teresa.
> 
> On Mon, Feb 11, 2019 at 04:16:34PM +0100, Teresa Remmet wrote:
> > Adds minimal support for the sysc interconnect target module found
> > on many TI SoCs. With this device tree includes have been rearagned.
> s/rearagned/rearranged"
> 
> > We need the driver to probe the child devices of the bus.
> > 
> > Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> 
> The implementation is simple, which is always a good thing.
> There is so far nothing TI specific in the implementation except
> for the of_device_id entries.
> Would it be an idea to rename this to a simple-bus driver.
> And then we can add relevant ID's as other may need the same functionality.
> ?

I'm not sure if it's worth it. It could also happen that we'll need to do
some TI specific initialization in the currently not-so-generic driver
in which case we would have to fork from the generic driver later.

I'm fine with either way.

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
