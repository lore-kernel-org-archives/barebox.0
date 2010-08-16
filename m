Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OktJq-0008I5-Bo
	for barebox@lists.infradead.org; Mon, 16 Aug 2010 06:37:15 +0000
Received: from sivan.tkos.co.il (guitar.tcltek.co.il [192.115.133.116])
	by tango.tkos.co.il (8.14.4/8.12.11) with ESMTP id o7G6bAMo009050
	for <barebox@lists.infradead.org>; Mon, 16 Aug 2010 09:37:10 +0300
Received: from jasper.tkos.co.il (taragon.tkos.co.il [10.0.4.3])
	by sivan.tkos.co.il (Postfix) with SMTP id A08FEB4F98
	for <barebox@lists.infradead.org>; Mon, 16 Aug 2010 09:37:05 +0300 (IDT)
Date: Mon, 16 Aug 2010 09:37:04 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20100816063704.GB28343@jasper.tkos.co.il>
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
Subject: fsl-udc (USB gadget) anyone?
To: barebox@lists.infradead.org

Hi Barebox list,

I see that there are no in-tree fsl-udc driver users. Does anyone here have 
experience with this driver on an i.MX based system? What pre-probe() 
initialization does this driver require at the platform code?

TIA,

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
