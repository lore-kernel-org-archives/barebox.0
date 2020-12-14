Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kos1O-0003jl-GW
 for barebox@lists.infradead.org; Mon, 14 Dec 2020 17:52:32 +0000
Received: by mail-oi1-x236.google.com with SMTP id l200so20065413oig.9
 for <barebox@lists.infradead.org>; Mon, 14 Dec 2020 09:52:30 -0800 (PST)
MIME-Version: 1.0
From: "DEMIRDJIAN, Antoine" <antoine.demirdjian@airliquide.com>
Date: Mon, 14 Dec 2020 18:51:52 +0100
Message-ID: <CAEuS4-2u1BDx0DKn1g4DP1P9H1=OyWxzVH0amhaMbihDE4wDGA@mail.gmail.com>
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
Subject: Why /dev/mem has null size?
To: barebox@lists.infradead.org

Dear all,

I'm trying to "addpart" to /dev/mem in order to copy my raw boot image inside.
But I noticed that /dev/mem doesn't really exists :

From devinfo :

   `-- mem1
      `-- 0x00000000-0xffffffffffffffff (   0 Bytes): /dev/mem

And more specifically :

barebox@MyBoard:/ devinfo mem1
Resources:
  num: 0
  name: mem
  start: 0x00000000
  size: 0x00000000
Driver: mem
Bus: platform

As a consequence, my addpart fails with "partition end is beyond device".

Do you have any idea why my /dev/mem size is 0x0 ?

Thanks,

--
Antoine D

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
