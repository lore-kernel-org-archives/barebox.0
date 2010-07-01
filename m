Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OUDxV-00069F-Eg
	for barebox@lists.infradead.org; Thu, 01 Jul 2010 07:13:18 +0000
Received: from sivan.tkos.co.il (guitar.tcltek.co.il [192.115.133.116])
	by tango.tkos.co.il (8.14.4/8.12.11) with ESMTP id o617DEVA006425
	for <barebox@lists.infradead.org>; Thu, 1 Jul 2010 10:13:14 +0300
Received: from jasper.tkos.co.il (taragon.tkos.co.il [10.0.4.3])
	by sivan.tkos.co.il (Postfix) with SMTP id A08CCB4F98
	for <barebox@lists.infradead.org>; Thu,  1 Jul 2010 10:13:09 +0300 (IDT)
Date: Thu, 1 Jul 2010 10:13:08 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20100701071307.GG16981@jasper.tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Barebox 'git describe' strangeness
To: barebox@lists.infradead.org

Hi barebox list,

For some reason 'git describe' shows me:

v2009.12.0-178-gdc882c3

I.e. git doesn't find the more recent v2010.06.0 tag. What is worse is that 
the top-level Makefile takes the '-178-gdc882c3' part and attaches it to 
'2010.06.0', making the output of the 'version' command:

barebox 2010.06.0-00178-gcc827a1 (Jul  1 2010 - 09:02:45)

which is plain wrong.

Can anyone here explain what's going on?

BTW, I'm using git version 1.7.1 from Debian testing.

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
