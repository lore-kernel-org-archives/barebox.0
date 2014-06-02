Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x22e.google.com ([2607:f8b0:4002:c07::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrOT8-0004eY-CG
 for barebox@lists.infradead.org; Mon, 02 Jun 2014 09:23:50 +0000
Received: by mail-yk0-f174.google.com with SMTP id 9so3415655ykp.33
 for <barebox@lists.infradead.org>; Mon, 02 Jun 2014 02:23:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <201406021019.38119.jbe@pengutronix.de>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
 <1401440856-6145-4-git-send-email-holgerschurig@gmail.com>
 <CAOpc7mHnKgzk4Usm0t21YZe3WT1WPRF47U8oEHfecbJyqoG90A@mail.gmail.com>
 <201406021019.38119.jbe@pengutronix.de>
Date: Mon, 2 Jun 2014 11:23:28 +0200
Message-ID: <CAOpc7mF515rdLsmY7bB+UGhWUfQMr58qotUixjuqiXK-Mdribg@mail.gmail.com>
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
Subject: Re: [PATCH 03/10] devinfo: make the output of "devinfo DEVICE" nicer
To: Juergen Borleis <jbe@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> But parameters can be changed by the user at run-time (e.g. "prompt>
> enable=1"), while the remaining info is just readable. That is why we used
> different characters.

I'm not getting you. Parameters are still changeable after this patch.

Or do you mean " = " vs. ":"?  Did you chose " = " by intent, i.e. so
that you can cut&paste text with the mouse?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
