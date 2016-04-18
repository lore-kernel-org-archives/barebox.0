Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x236.google.com ([2607:f8b0:400c:c05::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asAV6-0007cO-2i
 for barebox@lists.infradead.org; Mon, 18 Apr 2016 14:50:09 +0000
Received: by mail-vk0-x236.google.com with SMTP id t129so222953239vkg.2
 for <barebox@lists.infradead.org>; Mon, 18 Apr 2016 07:49:47 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CABDcavZr1PCpFrHVJFFayRQZ6vninf-xFS0H9QKSdA8u53OkDg@mail.gmail.com>
References: <CABDcavZr1PCpFrHVJFFayRQZ6vninf-xFS0H9QKSdA8u53OkDg@mail.gmail.com>
Date: Mon, 18 Apr 2016 16:49:47 +0200
Message-ID: <CABDcavZZd4AofsfSYMVbEPfjpPyF9rbmv6BXAG_8mLiJhmeL+Q@mail.gmail.com>
From: Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com>
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
Subject: Fwd: Micrel KSZ9031RN PHY problem
To: barebox@lists.infradead.org

Hello all,

I am playing with barebox on an Atmel SAMA5D3 Xplained board. It is
now working fine for the most part, however after updating to the
latest sources from git I found a problem that I had not seen before.

This board has two Ethernet interfaces; eth0 uses a Micrel KSZ9031RN
PHY, and eth1 uses a Micrel KSZ8081RNB PHY.

It seems that after release 2016.03.0, eth0 does not work anymore with
some routers. Specifically I found this problem with a Comtrend
VG-8050. I have tested other routers and the problem was not present
there.

After some research it seems that the problem is caused by this
commit: http://git.pengutronix.de/?p=barebox.git;a=commit;h=da89ee8f2e04e116410632a185024f58b8262d87

Before this commit eth0 was working fine. After this commit, the link
cannot established anymore:

[...]
barebox:/# ping 192.168.0.128
ping failed: Network is down

Before diving further into this I thought it could be a good idea to
ask, in case someone can shed some light here.

Any feedback is welcome.

Best,

Guillermo Rodriguez Garcia
guille.rodriguez@gmail.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
