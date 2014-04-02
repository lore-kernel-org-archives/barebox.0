Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-f179.google.com ([209.85.160.179])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WVMjq-0006g1-W8
 for barebox@lists.infradead.org; Wed, 02 Apr 2014 15:06:03 +0000
Received: by mail-yk0-f179.google.com with SMTP id 9so300450ykp.24
 for <barebox@lists.infradead.org>; Wed, 02 Apr 2014 08:05:38 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 2 Apr 2014 17:05:38 +0200
Message-ID: <CAOpc7mEKy0sKGdKbSqvCJjQRcz_wBQY_tVYWZ3-TH_V4XqAQ1A@mail.gmail.com>
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
Subject: Suggestions for new i.MX6 board
To: barebox@lists.infradead.org

Hi list,

I'm going to implement barebox to an i.MX6Q based board we've
developed in the company I work for.

Now the very first question is: to CONFIG_IMX_MULTI_BOARDS or not to
CONFIG_IMX_MULTI_BOARDS??

For example, I see in "make xconfig" that some boards are made in a
multi-board way, e.g. they are active when CONFIG_IMX_MULTI_BOARDS is
set (e.g. Sabrelite). However, there is one that is only visible
without that config,. the Armadillo2. Obviously I could do it this are
that way, so which should I use?   Personally I don't think that it
makes sense to compile a barebox binary that runs on different boards,
I don't even know how the boot loader would discriminate if it runs on
board A or board B ...


Or, I could phrase that question differently: from all the existing
i.MX6 boards, which one is the one with the least bitrot, i.e. which
one should I take as a template?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
