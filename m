Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x232.google.com ([2607:f8b0:4002:c01::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqIp3-0001tS-5N
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:09:57 +0000
Received: by mail-yh0-f50.google.com with SMTP id 29so1335863yhl.9
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:09:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1401440856-6145-5-git-send-email-holgerschurig@gmail.com>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
 <1401440856-6145-5-git-send-email-holgerschurig@gmail.com>
Date: Fri, 30 May 2014 11:09:35 +0200
Message-ID: <CAOpc7mEtpfyVYTuEWAF6zY8rPj-_LnmkmV0C1bUGOawgK_KcLw@mail.gmail.com>
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
Subject: Re: [PATCH 04/10] parameters: only show possible enumerations if
 there are any
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Before this patch, "drvinfo fb0" displayed (beside other things):

    Parameters:
      enable: 0
      mode_name: hsd100pxn1 ("hsd100pxn1")

Now it shows:

    Parameters:
      enable: 0
      mode_name: hsd100pxn1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
