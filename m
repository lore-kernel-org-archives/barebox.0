Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pz0-f49.google.com ([209.85.210.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pc9VF-0005o8-Pb
	for barebox@lists.infradead.org; Mon, 10 Jan 2011 04:37:11 +0000
Received: by pzk30 with SMTP id 30so4139559pzk.36
	for <barebox@lists.infradead.org>; Sun, 09 Jan 2011 20:37:07 -0800 (PST)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Mon, 10 Jan 2011 15:36:49 +1100
Message-Id: <1294634212-29029-1-git-send-email-marc@cpdesign.com.au>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: imx: Save boot source into env during init
To: barebox@lists.infradead.org

Hi,

This series saves the boot location into an environment variable $boot_loc for 
use in init/boot scripts etc. on imx25 and imx35.

Could someone comment as to whether the first patch is strictly necessary? 
- env_push_context() needs to be called before imx_boot_save_loc() (which 
calls export()), and I'm not sure whether it would always be guaranteed 
if they are both late_initcalls. I assume it comes down to linking order..

Cheers,
Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
