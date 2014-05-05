Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WhGOB-00060N-Gl
 for barebox@lists.infradead.org; Mon, 05 May 2014 10:44:52 +0000
Received: by mail-la0-f53.google.com with SMTP id b8so4575005lan.40
 for <barebox@lists.infradead.org>; Mon, 05 May 2014 03:44:28 -0700 (PDT)
Date: Mon, 5 May 2014 14:55:12 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140505145512.133932fc3ee2247b660638c2@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: TODO: Rewrite network stack.
To: barebox@lists.infradead.org

Hi!

I have inspected TODO file from barebox repo. Here is a quote:

  [ ] Rewrite network stack. The one-loop-for-all-protocols stack is just t=
oo
      ugly and big and uses thousands of global variables. Identify common
      functions and make a loop per network protocol

There is no much tiny TCP/IP stack candidates for porting to barebox.
The most notable is lwIP (http://savannah.nongnu.org/projects/lwip/).

See "project that use lwIP" list here: http://lwip.wikia.com/wiki/Projects_=
that_use_lwIP

lwip code is BSD-licensed. Is it possible to use lwip code in barebox?

--=A0
Best regards,
=A0 Antony Pavlov

P.S. Anyway TODO file from barebox repo is outdated (last change Jul 22 201=
0).

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
