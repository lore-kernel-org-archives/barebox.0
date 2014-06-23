Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x235.google.com ([2607:f8b0:4002:c07::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WyyYp-0005ax-DM
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 07:21:08 +0000
Received: by mail-yk0-f181.google.com with SMTP id 9so4491867ykp.26
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 00:20:40 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140623064217.GQ15686@pengutronix.de>
References: <1403120463-24005-1-git-send-email-jlu@pengutronix.de>
 <20140623064217.GQ15686@pengutronix.de>
Date: Mon, 23 Jun 2014 09:20:40 +0200
Message-ID: <CAOpc7mH-CxrSjuY9vsLdcVEWdYw7-4FJXx+SJKV+zOWGJYji9g@mail.gmail.com>
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
Subject: Re: [PATCH] commands: ls: add ll as an alias for ls -l
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Wouldn't it be better if barebox's shell gets the "alias" command?
This would solve a problem like this, and we also could get rid of one
of "edit"/"sedit" commands ...

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
