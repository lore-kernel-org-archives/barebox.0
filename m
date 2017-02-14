Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([208.187.125.9])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cdhag-0004dv-NT
 for barebox@lists.infradead.org; Tue, 14 Feb 2017 18:12:41 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 14 Feb 2017 18:12:15 +0000
Message-ID: <1487096017.20042.316.camel@kymetacorp.com>
References: <4bcf7de3-5ced-3575-9495-c1f4f20ce60c@phytec.de>
 <20170213192247.gjld5b33genwav2a@pengutronix.de>
 <a28cc10e07874a53bd28dabd35a558a8@srred1mail01.kymeta.local>
 <20170214072704.7erbpueegfqmjqus@pengutronix.de>
In-Reply-To: <20170214072704.7erbpueegfqmjqus@pengutronix.de>
Content-Language: en-US
Content-ID: <AEE81EC3C5E98D4084E3DBDD2BF63DAC@kymetacorp.com>
MIME-Version: 1.0
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
Subject: Re: barebox PBL question
To: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, 2017-02-14 at 08:27 +0100, Sascha Hauer wrote:
> > > You should use PBL_MULTI_IMAGES instead. In fact, the existing Rockchip
> > > port already does this.
> > 
> > Is there any advantage to the single image pbl system?  It seems like multi image
> > with one image achieves the same result.
> 
> The advantage is that the same config and only one build step is used
> to build images for multiple boards/projects. This greatly increases the
> chance that the existing configs are actually tested. Also it makes it
> easy to test the same software on different boards. Another thing is
> that I can currently built test every commit in every defconfig,
> something I couldn't do if every board had its own defconfig, possibly
> in a xload and a regular variant. Defconfig files also have the tendency
> to bitrot very fast. Most defconfigs are committed once and never
> touched again which means you never get the new features and whenever
> you change the board you possibly find a defconfig that needs many
> adjustments before you feel home.

These all sounds like advantages for the multi-pbl system.  I was asking
if the single pbl system had an advantage.  It seems to be mostly a
duplication of multi-pbl that can't do as much.  I wondered if there was
a reason, besides inertia, to keeping it around.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
