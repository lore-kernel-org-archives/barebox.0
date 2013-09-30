Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22d.google.com ([2a00:1450:400c:c05::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQeOt-0004lh-Gr
 for barebox@lists.infradead.org; Mon, 30 Sep 2013 14:24:40 +0000
Received: by mail-wi0-f173.google.com with SMTP id hq15so3932793wib.12
 for <barebox@lists.infradead.org>; Mon, 30 Sep 2013 07:24:17 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 30 Sep 2013 09:24:17 -0500
Message-ID: <CAO-21LP2aK6Zwphamv2Zj_-Y1YWt6xNX6GZSUVrHreALsaJQsg@mail.gmail.com>
From: "Allen Kennedy Jr." <allen@kennedystuff.com>
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
Subject: Is Relocation forced?
To: Barebox Mailing list <barebox@lists.infradead.org>

Hello,
  I have relocatable binary set to "n"  and I load barebox into ram
exactly where it is supposed to be, but it still runs the function
"relocate binary"

  Is the option to not relocate barebox, not supported?

Why would I want it not-relocated?  Because relocate_to_current_adr()
causes an exception every time, and barebox won't boot.  And I can't
figure out why the exception occurs.

thanks,
-allen

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
