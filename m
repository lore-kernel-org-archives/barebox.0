Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z5748-0000H9-9X
 for barebox@lists.infradead.org; Wed, 17 Jun 2015 06:43:17 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id BBCC4A00399
 for <barebox@lists.infradead.org>; Wed, 17 Jun 2015 08:44:21 +0200 (CEST)
Date: Wed, 17 Jun 2015 08:42:50 +0200
From: Jan Remmet <J.Remmetl@phytec.de>
Message-ID: <20150617064250.GA2778@lws-weitzel2@phytec.de>
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
Reply-To: Jan Remmet <J.Remmet@phytec.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: state: access from linux
To: barebox@lists.infradead.org

Hello,
I'm working with barebox states and wonder if there is already a tool to access
states in eeprom from linux?
The states from a dtb backend should be easy to read. For raw there must be
looked under /proc/devicetree or a state kernel driver.

Jan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
