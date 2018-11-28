Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gS14q-00040W-BT
 for barebox@lists.infradead.org; Wed, 28 Nov 2018 14:45:11 +0000
From: Parthiban Nallathambi <pn@denx.de>
Message-ID: <1b0d8708-3da5-0ff6-ed99-3531a4bcf58d@denx.de>
Date: Wed, 28 Nov 2018 15:44:17 +0100
MIME-Version: 1.0
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: CONFIG_AUTOBOOT_STOP_STR to stop autoboot in barebox
To: barebox@lists.infradead.org
Cc: pn@denx.de

Hello All,

I see there are they ways to stop the autoboot in barebox as of now,

- ENTER
- Ctrl - C
- Any single Key

please correct me if I have missed anything.

Question: Do we have option for sequence of character to stop the
autoboot?

-- 
Thanks,
Parthiban N

DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-22 Fax: (+49)-8142-66989-80 Email: pn@denx.de

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
