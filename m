Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBhgG-0002T2-Mt
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 07:48:17 +0000
Received: by weyr3 with SMTP id r3so849290wey.36
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2012 00:48:12 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <20120908180310.GH20330@game.jcrosoft.org>
 <1347127542-11981-1-git-send-email-plagnioj@jcrosoft.com>
 <1347127542-11981-11-git-send-email-plagnioj@jcrosoft.com>
 <20120912073904.GK6180@pengutronix.de>
Date: Wed, 12 Sep 2012 09:48:08 +0200
In-Reply-To: <20120912073904.GK6180@pengutronix.de> (Sascha Hauer's message of
 "Wed, 12 Sep 2012 09:39:04 +0200")
Message-ID: <87fw6nu1fr.fsf@macbook.be.48ers.dk>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 11/11] png: add picoPNG lib support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:

 >> +config PICOPNG
 >> +	bool "picoPNG"
 >> +	help
 >> +	  Support only RGBA PNG8

 Sascha> 	  This PNG libraray only supports RGBA PNG8 but is much smaller
 Sascha> 	  in binary size then lodepng.

s/libraray/library/

s/then/than/

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
