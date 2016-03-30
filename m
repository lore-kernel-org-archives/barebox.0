Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x22b.google.com ([2607:f8b0:400c:c05::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1alIDD-0001mE-7w
 for barebox@lists.infradead.org; Wed, 30 Mar 2016 15:39:16 +0000
Received: by mail-vk0-x22b.google.com with SMTP id k1so66176100vkb.0
 for <barebox@lists.infradead.org>; Wed, 30 Mar 2016 08:38:54 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 30 Mar 2016 17:38:53 +0200
Message-ID: <CABDcavYEn0e8GkEzfJnayr32X85dA5tz-dRaMg3H6J8i-aXj0w@mail.gmail.com>
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
Subject: Scrolling issues in edit command
To: barebox@lists.infradead.org

Hi all,

I am trying to setup Barebox on a SAMA5D3-Xplained board. I started
with barebox-2016.03.0. So far things are looking good.

I have found that I have problems in the 'edit' command, when trying
to scroll using the arrow keys. Scrolling up inserts random "A"
characters in the text, scrolling down inserts random "B" characters.
I am using minicom as the terminal. I don't remember seeing this
before with older versions of barebox on different boards.

This is not fatal of course but it makes it very cumbersome to edit
files from barebox itself. Can anyone provide any hints on why this is
happening or how to fix it ?

Thank you,

Guillermo Rodriguez

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
