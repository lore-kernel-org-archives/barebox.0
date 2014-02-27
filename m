Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22d.google.com ([2a00:1450:4013:c00::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJ7pS-0002wi-D5
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 20:45:15 +0000
Received: by mail-ee0-f45.google.com with SMTP id d17so1709629eek.4
 for <barebox@lists.infradead.org>; Thu, 27 Feb 2014 12:44:51 -0800 (PST)
Date: Thu, 27 Feb 2014 21:44:43 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140227204441.GA28168@omega>
References: <1393508819-3693-1-git-send-email-renaud.barbier@ge.com>
 <1393508819-3693-4-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1393508819-3693-4-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 3/4] memtest: exclude page starting at address 0.
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Hi Renaud,

thanks for finding this issue... I introduce it so sorry for that!

- Alex


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
