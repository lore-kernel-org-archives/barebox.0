Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8khe-00079G-Sd
 for barebox@lists.infradead.org; Thu, 20 Aug 2020 13:34:03 +0000
Date: Thu, 20 Aug 2020 15:33:57 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20200820133357.GA180086@ravnborg.org>
References: <20200817045332.28099-1-a.fatoum@pengutronix.de>
 <20200817063802.GA1479756@ravnborg.org>
 <514ba35c-a685-8cac-0472-5353415539de@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <514ba35c-a685-8cac-0472-5353415539de@pengutronix.de>
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
Subject: Re: [PATCH 1/3] video: add simple, transparent, bridge implementation
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad.

On Thu, Aug 20, 2020 at 02:24:56PM +0200, Ahmad Fatoum wrote:
> Hi Sam,
> 
> On 8/17/20 8:38 AM, Sam Ravnborg wrote:
> > Hi Ahmad.
> > 
> > On Mon, Aug 17, 2020 at 06:53:30AM +0200, Ahmad Fatoum wrote:
> >> This enables support for simple bridges, i.e. bridges that can be
> >> used without initialization.
> >>
> >> This is e.g. the case with bridges that have persistent configuration,
> >> the kernel has a full-fledged driver to configure the bridge and persist it.
> >>
> >> The bootloader then needs to do nothing more. Having such a transparent
> >> bridge allows reusing the kernel device tree without changing the graph
> >> specification.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > 
> > Looking at this with my kernel hat on.
> > 
> > The kernel already have a simple-bridge.yaml binding, so another name
> > for the binding would be preferred - to avoid the name clash.
> > Naming it barebox,simple-bridge would be fine IMO.
> 
> Oh, didn't notice the rename. It looks like the kernel simple bridge
> does everything I want. When I work on this again, I'll look into
> using that binding instead. Thanks!
> 
> > And in the kernel we today only accept bindings in DT schema format
> > (.yaml). Maybe do the same in the barebox and convert this binding to DT
> > Schema format while at it.
> 
> having make dtbs and dtbs_check as barebox make targets is on my todo list.
> For now, I don't see the utility in having yaml bindings when they aren't
> easily tested.
You are coloring me confused here.

.txt based bindings are not testable and syntax errros needs to be
spotted manually. Futrthermore there is very little in description of
the syntax.

.yaml bindings are very simple to test - there is full infrastructure in
the kernel. And there is semi formal specification of the syntax. And
this is the syntax to be used for all new bindings.

Tooling is simple - barebox tooling is not needed:

cp foobar.yaml ${kernel}/Documentation/bindings/
make dt_binding_check DT_SCHEMA_FILES=foobar.yaml

I do not know what is the right approach in barebox, but as I wrote
above the arguments confused me.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
