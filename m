Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og113.obsmtp.com ([64.18.0.26])
	by canuck.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R3p3J-0001zF-TE
	for barebox@lists.infradead.org; Wed, 14 Sep 2011 12:59:00 +0000
Received: from corgarff.edi.gefes.com (corgarff.edi.gefes.com [3.26.68.194])
	by doyen.ramix-uk.cho.ge.com (Postfix) with ESMTP id BEA26C81C5
	for <barebox@lists.infradead.org>; Wed, 14 Sep 2011 13:58:50 +0100 (BST)
Message-ID: <4E70A50A.4080001@ge.com>
Date: Wed, 14 Sep 2011 13:58:50 +0100
From: Renaud Barbier <renaud.barbier@ge.com>
MIME-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: start_barebox
To: barebox@lists.infradead.org

I was wondering whether there is an error in the function start_barebox
  below at line 119 and 122.
Is not it missing the RELOC macro?

"memcpy(RELOC(&__early_init_data_begin), init_data_ptr" and

   init_data_ptr = RELOC(&__early_init_data_begin);


void start_barebox (void)
  108 {
  109         initcall_t *initcall;
  110         int result;
  111 #ifdef CONFIG_COMMAND_SUPPORT
  112         struct stat s;
  113 #endif
  114
  115 #ifdef CONFIG_HAS_EARLY_INIT
  116         /* We are running from RAM now, copy early initdata from
  117          * early RAM to RAM
  118          */
  119         memcpy(&__early_init_data_begin, init_data_ptr,
  120                         (ulong)&__early_init_data_end -
  121                         (ulong)&__early_init_data_begin);
  122         init_data_ptr = &__early_init_data_begin;
  123 #endif /* CONFIG_HAS_EARLY_INIT */
  124

-- 
Renaud Barbier
14, Links Place
3/2 great Michael House
Edinburgh, EH67EN
Tel: +44 131 561 3532


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
