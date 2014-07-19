Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x231.google.com ([2607:f8b0:4002:c01::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X8Zu9-0005A6-EL
 for barebox@lists.infradead.org; Sat, 19 Jul 2014 19:02:45 +0000
Received: by mail-yh0-f49.google.com with SMTP id b6so2888611yha.36
 for <barebox@lists.infradead.org>; Sat, 19 Jul 2014 12:02:22 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140718113626.19aba6e8e971f15944a6ff93@gmail.com>
References: <1405370916-6828-1-git-send-email-antonynpavlov@gmail.com>
 <1405370916-6828-5-git-send-email-antonynpavlov@gmail.com>
 <20140718054413.GL23235@pengutronix.de>
 <20140718113626.19aba6e8e971f15944a6ff93@gmail.com>
Date: Sat, 19 Jul 2014 21:02:22 +0200
Message-ID: <CAOpc7mEHJFktB5v=uRqLUWgEdzHA05KmFmC3_ix+gfooO-0MKw@mail.gmail.com>
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
Subject: Re: [RFC v3 4/5] commands: add hwclock
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

I'd prefer a more logical format (and that is also in the help).
However, in this case I wouldn't name the command "hwclock", but maybe
"setclock".

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
