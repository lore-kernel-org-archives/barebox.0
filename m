Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x234.google.com ([2607:f8b0:4002:c07::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wkqjm-0006Bj-Kd
 for barebox@lists.infradead.org; Thu, 15 May 2014 08:09:58 +0000
Received: by mail-yk0-f180.google.com with SMTP id q9so579088ykb.11
 for <barebox@lists.infradead.org>; Thu, 15 May 2014 01:09:34 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140514175540.56dbdf584330f67779392264@gmail.com>
References: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
 <20140514070250.GV5858@pengutronix.de>
 <20140514175540.56dbdf584330f67779392264@gmail.com>
Date: Thu, 15 May 2014 10:09:34 +0200
Message-ID: <CAOpc7mFnHEUngOJ0Sny99DAsNvQyjynOeBzkE6_LmgCX0E5MBg@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: [PATCH 00/19] commands rework patch series
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Yep, that "gpiolib" command is also on my list.

I personally also like to rename the device tree commands away from
of_ (Open Firmware), to dt_ (Device Tree). Today anyone uses the term
"Device Tree", the of_XXX is just a programmers view, e.g. a prefix
for C structures.

Still, I'm unsure about it.

The thing is: if I rename "gpiolib" to "gpioinfo", no init script will
be harmed. But maybe some init scripts add device tree nodes
on-the-fly?  If that is in the git tree, I can find it. But should I
care for things that aren't in the git tree?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
