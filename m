Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x22b.google.com ([2607:f8b0:4002:c07::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X1z1G-0001FQ-G9
 for barebox@lists.infradead.org; Tue, 01 Jul 2014 14:26:51 +0000
Received: by mail-yk0-f171.google.com with SMTP id 200so5740368ykr.16
 for <barebox@lists.infradead.org>; Tue, 01 Jul 2014 07:26:27 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.11.1407010832100.28138@localhost>
References: <alpine.LFD.2.11.1407010832100.28138@localhost>
Date: Tue, 1 Jul 2014 16:26:27 +0200
Message-ID: <CAOpc7mHhFazCDMQqq8w3hUkRjzovvtSBksYdjwDdkV+LEDb7bA@mail.gmail.com>
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
Subject: Re: generated command references sometimes render a solid blob of text
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

The Kconfig help entries (the source of the generated command
reference) have been written before python-sphinx have been selected.

So basically we need to go over all of them and make sure that they
render correctly. From my point of view, it doesn't harm if you see
raw ReST formatting while inside "make xconfig".

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
