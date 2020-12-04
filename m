Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1klFSV-0007b2-RY
 for barebox@lists.infradead.org; Fri, 04 Dec 2020 18:05:32 +0000
Received: by mail-lf1-x12d.google.com with SMTP id s30so8869197lfc.4
 for <barebox@lists.infradead.org>; Fri, 04 Dec 2020 10:05:29 -0800 (PST)
MIME-Version: 1.0
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 4 Dec 2020 15:05:16 -0300
Message-ID: <CAOMZO5B8a+27UfmTP=RvyZYD34fnteMrSXAsvsDZ6bhJwCoUtw@mail.gmail.com>
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
Subject: Running reset stress test
To: Barebox List <barebox@lists.infradead.org>

Hi,

This is probably an easy one :-)

I would like to run reset stress test in Barebox

In U-Boot, I do the following:

=> setenv bootcmd reset
=> saveenv
=> reset

and then the board keeps getting reset.

What would be the equivalent mechanism to achieve the same in Barebox?

Thanks,

Fabio Estevam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
