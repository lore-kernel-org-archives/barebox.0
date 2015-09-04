Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZXo0V-00047L-8y
 for barebox@lists.infradead.org; Fri, 04 Sep 2015 10:14:08 +0000
Received: by lbbmp1 with SMTP id mp1so8595559lbb.1
 for <barebox@lists.infradead.org>; Fri, 04 Sep 2015 03:13:43 -0700 (PDT)
Date: Fri, 4 Sep 2015 13:15:59 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20150904131559.334f65da@berta>
In-Reply-To: <20150903181636.GL18700@pengutronix.de>
References: <1441287526-2077-1-git-send-email-pmamonov@gmail.com>
 <1441295192.3102.9.camel@pengutronix.de>
 <20150903193155.1127b6d5fa5948cc70ec4a16@gmail.com>
 <20150903181636.GL18700@pengutronix.de>
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
Subject: Re: [PATCH] ata: intf_platform_ide: add OF bindings
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi, Sascha!

On Thu, 3 Sep 2015 20:16:36 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Thu, Sep 03, 2015 at 07:31:55PM +0300, Antony Pavlov wrote:
> > On Thu, 03 Sep 2015 17:46:32 +0200
> > Lucas Stach <l.stach@pengutronix.de> wrote:
> > 
> > > Hi Peter.
> > > 
> > > Sorry, but this patch is wrong. You can't just make up completely
> > > ad-hoc DT bindings. You are pushing platformdata 1:1 into the DT,
> > > which is not how the conversion to DT should be done.
> > > 
> > > There is also no pre-existing binding for "ata-generic" in the
> > > Linux kernel which would define any of those properties.
> > 
> > Hmmm. in linux-4.2/drivers/ata/pata_of_platform.c I see
> > "ata-generic" with "reg-shift" and "pio-mode" properties.
> 
> It seems this binding comes from the good old days when writing
> binding doc was an optional task ;)
> 
> Sascha
> 

So, do we need this linux-like binding in barebox, or should we prefer
a soc-specific approach, as Lucas described:
> Most likely your IDE controller is inside some SoC specific block,
> with a specific compatible, which may also handle clocks and other
> required stuff and that one should instantiate the IDE driver if
> needed.
?

Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
