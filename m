Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-x231.google.com ([2607:f8b0:400d:c01::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VCAeq-0006PJ-4c
 for barebox@lists.infradead.org; Wed, 21 Aug 2013 15:49:16 +0000
Received: by mail-qc0-f177.google.com with SMTP id e1so320908qcx.36
 for <barebox@lists.infradead.org>; Wed, 21 Aug 2013 08:48:46 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 21 Aug 2013 11:48:46 -0400
Message-ID: <CAJyuEedn1uwVWNGOiw9x3_5qeJxfR0kXLXTVHSX3dkLvCKnYwQ@mail.gmail.com>
From: Michael Burkey <mdburkey@gmail.com>
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
Subject: Porting BareBox to Variscite iMX6 SOM
To: barebox@lists.infradead.org

Sascha,

>When doing so please start with a devicetree based board to copy-paste
>from. The imx6q-phytec-pbab01 should be a pretty good example.

Where does said imx6q-phytec-pbab01 example happen to live?

Which brings up another question:

I know you were heavily involved in the bring-up of Barebox on the
Phyflex iMX6 and in the creation of the BSP (which is still based on
2012.02). When working with iMX6 platforms, which is a better starting
point -- the Phytec 2012.02 BSP version, or the current 2013.08
version?

Right now I've been working from the 2013.08 version -- but, unless
I'm missing something, it doesn't look like the Phyflex support has
been incorporated in the mainline Barebox.

Thanks!
Michael Burkey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
