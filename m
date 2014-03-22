Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plane.gmane.org ([80.91.229.3])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WROTi-000280-AL
 for barebox@lists.infradead.org; Sat, 22 Mar 2014 16:08:59 +0000
Received: from list by plane.gmane.org with local (Exim 4.69)
 (envelope-from <gcbb-barebox@m.gmane.org>) id 1WROTJ-0001NH-St
 for barebox@lists.infradead.org; Sat, 22 Mar 2014 17:08:34 +0100
Received: from static-82-85-234-51.clienti.tiscali.it ([82.85.234.51])
 by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
 id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Sat, 22 Mar 2014 17:08:33 +0100
Received: from cristiano_dealti by static-82-85-234-51.clienti.tiscali.it with
 local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Sat, 22 Mar 2014 17:08:33 +0100
From: Cristiano De Alti <cristiano_dealti@hotmail.com>
Date: Sat, 22 Mar 2014 16:08:02 +0000 (UTC)
Message-ID: <loom.20140322T170353-879@post.gmane.org>
References: <loom.20140313T212720-896@post.gmane.org>
Mime-Version: 1.0
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
Subject: Re: i.MX21 ADS NAND flash bad blocks scan. Barebox vs Linux
To: barebox@lists.infradead.org

Cristiano De Alti <cristiano_dealti@...> writes:

> This board has a 64MBi Samsung NAND flash that is detected both by Barebox
> (recent snapshot) and Linux 3.4.77.
> 
> The issue is that, while the bad blocks scan takes a negligible time on
> Barebox, it takes 10 minutes to complete on Linux.

I believe the NAND flash is faulty. Mechanically stressing the NAND flash
card seems to speed up BB scan on Linux or detect more bad blocks. I wont's
spend more time on this issue



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
