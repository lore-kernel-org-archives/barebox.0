Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1anKoD-00055S-Cp
 for barebox@lists.infradead.org; Tue, 05 Apr 2016 06:49:54 +0000
Date: Tue, 5 Apr 2016 08:49:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160405064930.GE9102@pengutronix.de>
References: <20150617064250.GA2778@lws-weitzel2@phytec.de>
 <20150617090646.GI6325@pengutronix.de>
 <1459806291.24482.38.camel@ws-apr.office.loc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1459806291.24482.38.camel@ws-apr.office.loc>
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
Subject: Re: barebox-state (dt-utils): dump-shell broken for state@0
To: Andreas Pretzsch <apr@cn-eng.de>
Cc: barebox@lists.infradead.org

+Cc mkl who wrote 6d58ca4

On Mon, Apr 04, 2016 at 11:44:51PM +0200, Andreas Pretzsch wrote:
> On Mi, 2015-06-17 at 11:06 +0200, Sascha Hauer wrote:
> > On Wed, Jun 17, 2015 at 08:42:50AM +0200, Jan Remmet wrote:
> > > Hello,
> > > I'm working with barebox states and wonder if there is already a tool to access
> > > states in eeprom from linux?
> > > The states from a dtb backend should be easy to read. For raw there must be
> > > looked under /proc/devicetree or a state kernel driver.
> > 
> > Yes, there is such a tool here:
> > 
> > git://git.pengutronix.de/git/tools/dt-utils.git
> > 
> > The binary you'll need is barebox-state.
> 
> barebox-state provides a command "--dump-shell" to dump the state
> suitable for shell sourcing.
> Essentially, it prints out variable=value pairs.
> So typical use would be a
> 	eval `barebox-state --dump-shell`
> somewhere in a shell script (incl. simple ones like busybox ash).
> 
> Unfortunately, this breaks with indices in the state name, as @ is not
> escaped.
> Tested with dt-utils v2015.10.0, but according to code this is the case
> from v2015.05.0 up until master.
> 
> As of commit 6d58ca4 "barebox-state: fix export of shell variables:",
> the fixed prefix "STATE_" was replaced by the supplied state name.
> Also in there, all '.' are replaced by '_' in the variable name. Not in
> the state name itself.
> 
> The same would be necessary for (at least) '@', because it is invalid
> also inside a shell variable name. As probably other chars, just I'm not
> sure which might show up from the dts. So no premature patch from my
> side.
> Not only for the variable name, but also the state name itself.
> 
> For clarification of the setup and behaviour, see below.
> 
> 
> Now, question would be how to fix this.
> Also replacing '@' by '_' might break existing users (e.g. when parsing
> from stdin or similar, instead of using shells eval command).
> On the other hand, status quo breaks the "described" use of dump
> _shell_ ...
> 
> Talking about this, it might be also some idea to resurrect the old
> behaviour of always printing 'STATE_' as prefix instead of the state
> name from dts. Not sure if it's the best idea, or how to call such an
> extra option, didn't think it through by now.
> Just saying, as I will go this way here (as a hotfix) for my setup...
> 
> Ideas, opinions ?

I'm in favor for resurrecting the old 'STATE_' behaviour, but I don't
know why Marc changed it. Maybe he has some more input.

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
