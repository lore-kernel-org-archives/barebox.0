Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22d.google.com ([2a00:1450:4013:c00::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UtzZr-0006Ze-AR
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 12:21:00 +0000
Received: by mail-ee0-f45.google.com with SMTP id c1so2681772eek.32
 for <barebox@lists.infradead.org>; Tue, 02 Jul 2013 05:20:37 -0700 (PDT)
Received: from x61s.campuswlan.hs-rm.de (dip-2u.itc.fh-wiesbaden.de.
 [195.72.109.114])
 by mx.google.com with ESMTPSA id ci50sm36245401eeb.12.2013.07.02.05.20.35
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Tue, 02 Jul 2013 05:20:36 -0700 (PDT)
Date: Tue, 2 Jul 2013 14:24:02 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130702122344.GA27278@x61s.campuswlan.hs-rm.de>
References: <1372766968-13103-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372766968-13103-1-git-send-email-alex.aring@gmail.com>
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
To: barebox@lists.infradead.org

Hi,

i am not a make expert but this is a common error with newer make
versions.

But I think this solution isn't correct. It's better to split in two
rules like:

images/%.s: barebox.bin FORCE
        $(Q)$(MAKE) $(build)=images $@

images: barebox.bin FORCE
        $(Q)$(MAKE) $(build)=images $@

Getting this information from:
http://www.linuxquestions.org/questions/linux-software-2/error-mixed-implicit-and-normal-rules-while-trying-to-build-busybox-826795/

Regards
Alex


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
