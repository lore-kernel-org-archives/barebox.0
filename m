Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from blaine.gmane.org ([195.159.176.226])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iolHx-00051Y-VR
 for barebox@lists.infradead.org; Tue, 07 Jan 2020 09:36:42 +0000
Received: from list by blaine.gmane.org with local (Exim 4.89)
 (envelope-from <gcbb-barebox@m.gmane.org>) id 1iolHv-00085D-JL
 for barebox@lists.infradead.org; Tue, 07 Jan 2020 10:36:35 +0100
From: Frederick Gotham <cauldwell.thomas@gmail.com>
Date: Tue, 7 Jan 2020 09:36:29 -0000 (UTC)
Message-ID: <XnsAB3D61BD490A1fgotham@195.159.176.226>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Why the internal kernel header?
To: barebox@lists.infradead.org


I'm using Barebox with Buildroot. Previously I was using Barebox version 
2018.12.0, and now I have upgraded to version 2019.12.0.

Barebox version 2019.12.0 won't compile for me with Buildroot, because the 
header "<linux/list.h>" is missing.

The reason why this header file is missing is that "list.h" is an internal 
kernel header file, rather than a userspace kernel header file.

I could try simply copying "list.h" into the appropriate directory in order 
to get Barebox to compile, but I'm not keen on doing that.

Does Barebox really need that header file, and if so, why?

Frederick


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
