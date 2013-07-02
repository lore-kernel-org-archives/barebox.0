Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x235.google.com ([2a00:1450:4013:c00::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Utzgi-0006m8-9g
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 12:28:06 +0000
Received: by mail-ee0-f53.google.com with SMTP id c41so2723098eek.12
 for <barebox@lists.infradead.org>; Tue, 02 Jul 2013 05:27:42 -0700 (PDT)
Date: Tue, 2 Jul 2013 14:31:11 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130702123109.GB27278@x61s.campuswlan.hs-rm.de>
References: <1372766968-13103-1-git-send-email-alex.aring@gmail.com>
 <20130702122344.GA27278@x61s.campuswlan.hs-rm.de>
 <1372767660.4277.10.camel@weser.hi.pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372767660.4277.10.camel@weser.hi.pengutronix.de>
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
Subject: Re: [PATCH] Makefile: fix mixed implicit and normal rules
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

On Tue, Jul 02, 2013 at 02:21:00PM +0200, Lucas Stach wrote:
> Am Dienstag, den 02.07.2013, 14:24 +0200 schrieb Alexander Aring:
> > Hi,
> > 
> > i am not a make expert but this is a common error with newer make
> > versions.
> > 
> > But I think this solution isn't correct. It's better to split in two
> > rules like:
> > 
> > images/%.s: barebox.bin FORCE
> >         $(Q)$(MAKE) $(build)=images $@
> > 
> > images: barebox.bin FORCE
> >         $(Q)$(MAKE) $(build)=images $@
> > 
> > Getting this information from:
> > http://www.linuxquestions.org/questions/linux-software-2/error-mixed-implicit-and-normal-rules-while-trying-to-build-busybox-826795/
> > 
> > Regards
> > Alex
> > 
> > 
> This is already fixed. See message
> 1372457390-20162-1-git-send-email-dev@lynxeye.de
> "[PATCH] Split Multimage Makefile rule in explicit and implicit parts"
> 

ah good to know. Thanks and sry for the noise. :-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
