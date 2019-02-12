Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtY1h-0003Fe-DW
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 13:23:06 +0000
Message-ID: <33609c0d6dc1627d573a659c9957c175b0d0fcf2.camel@phytec.de>
From: Teresa Remmet <t.remmet@phytec.de>
Date: Tue, 12 Feb 2019 14:23:04 +0100
In-Reply-To: <20190212080906.5bgldri5gjpjptys@pengutronix.de>
References: <1549898200-32688-1-git-send-email-t.remmet@phytec.de>
 <1549898200-32688-2-git-send-email-t.remmet@phytec.de>
 <20190211154138.GA5683@ravnborg.org>
 <20190212080906.5bgldri5gjpjptys@pengutronix.de>
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
Subject: Re: [PATCH 1/7] drivers: bus: Add ti-sysc bus driver
To: Sascha Hauer <s.hauer@pengutronix.de>, Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

Hello Sascha and Sam, 
 
Am Dienstag, den 12.02.2019, 09:09 +0100 schrieb Sascha Hauer:
> Hi Sam,
> 
> On Mon, Feb 11, 2019 at 04:41:38PM +0100, Sam Ravnborg wrote:
> > Hi Teresa.
> > 
> > On Mon, Feb 11, 2019 at 04:16:34PM +0100, Teresa Remmet wrote:
> > > Adds minimal support for the sysc interconnect target module
> > > found
> > > on many TI SoCs. With this device tree includes have been
> > > rearagned.
> > 
> > s/rearagned/rearranged"
> > 
> > > We need the driver to probe the child devices of the bus.
> > > 
> > > Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> > 
> > The implementation is simple, which is always a good thing.
> > There is so far nothing TI specific in the implementation except
> > for the of_device_id entries.
> > Would it be an idea to rename this to a simple-bus driver.
> > And then we can add relevant ID's as other may need the same
> > functionality.
> > ?
> 
> I'm not sure if it's worth it. It could also happen that we'll need
> to do
> some TI specific initialization in the currently not-so-generic
> driver
> in which case we would have to fork from the generic driver later.

Yes there might be some special initialization added later. That's what
I thought, too. At the moment the child devices of a simple bus are
populated in of_probe(). 
If there is any need for a such a generic driver right now. I will
rename it.

Teresa

> 
> I'm fine with either way.
> 
> Sascha
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
