Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x231.google.com ([2607:f8b0:4002:c07::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqJEi-0003jH-TE
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:36:29 +0000
Received: by mail-yk0-f177.google.com with SMTP id 19so1275631ykq.22
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:36:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1401441248-15034-1-git-send-email-antonynpavlov@gmail.com>
References: <1401441248-15034-1-git-send-email-antonynpavlov@gmail.com>
Date: Fri, 30 May 2014 11:36:07 +0200
Message-ID: <CAOpc7mE0DyC1GGufoZ1KG5w=5xvcvR_QiF7+_OVQa2KCvQh5TA@mail.gmail.com>
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
Subject: Re: [RFC] net: picoping: try to make it asynchronious: fail
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Daniele Lacamera <daniele.lacamera@tass.be>

> Has anybody any ideas how to improve the situation?

AFAIK barebox doesn't have the concept of aborting something. e.g. you
cannot do "msleep 20000" and then press Ctrl-C. The <INTERRUPT> you
see when you press Ctrl-C is from hush, and it is internal to hush.c
(see struct in_str, member interrupt).

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
