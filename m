Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx8-out.webonline.biz ([41.86.105.118]
 helo=assp01.webonline.biz)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VTwVE-0000sN-Ih
 for barebox@lists.infradead.org; Wed, 09 Oct 2013 16:20:49 +0000
Received: from ASSP.nospam (localhost.localdomain [127.0.0.1])
 by assp01.webonline.biz (Postfix) with ESMTP id ECCE53A0E8
 for <barebox@lists.infradead.org>; Wed,  9 Oct 2013 18:20:25 +0200 (SAST)
Date: Wed, 09 Oct 2013 09:20:11 -0700
From: Ivor Kruger <ivor@veriline.co.za>
Message-ID: <CE7AD04B.8CE7%ivor@veriline.co.za>
Mime-version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Adding GPIO device
To: barebox@lists.infradead.org

Found my own problem.

The step I missed was in making sure the spelling is correct=8A

I had CONFIG_GPIO_PCA953X instead of CONFIG_GPIO_PCA953x

Sorry for wasting time and space on mailing list for this.



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
