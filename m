Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qi0fo-0000My-IT
	for barebox@lists.infradead.org; Sat, 16 Jul 2011 08:56:33 +0000
Received: by ywf9 with SMTP id 9so929030ywf.36
	for <barebox@lists.infradead.org>; Sat, 16 Jul 2011 01:56:28 -0700 (PDT)
MIME-Version: 1.0
From: Vikram Narayanan <vikram186@gmail.com>
Date: Sat, 16 Jul 2011 14:25:58 +0530
Message-ID: <CAHwEkO0Oh258fshA5ptndeN+x79_nt=ayEwLPsxvL45YvN5mog@mail.gmail.com>
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
Subject: Using clocks_calc_mult_shift
To: barebox@lists.infradead.org

Hi,

Why are there lot of hardcoded mult/shift values inside the code.
Can't they be changed with clocks_calc_mult_shift?
Is it not changed purposely?
If not, I will send patches removing the hardcoded mult/shift values.

TIA,
Vikram

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
