Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2fJB-00016o-Pz
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 11:36:11 +0000
Received: from [69.196.158.250] (port=34948 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X2fIp-0005x6-T8
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 07:35:47 -0400
Date: Thu, 3 Jul 2014 07:35:44 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1407030733400.21495@localhost>
MIME-Version: 1.0
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
Subject: [PATCH] Documentation: defaultenv chapter from user manual.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


A number of grammar fixes, typoes, font changes from the defaultenv-2
chapter.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  some personal taste stuff on my part, feel free to object or suggest
alternatives.

diff --git a/Documentation/user/defaultenv-2.rst b/Documentation/user/defaultenv-2.rst
index fc3723e..faeeb81 100644
--- a/Documentation/user/defaultenv-2.rst
+++ b/Documentation/user/defaultenv-2.rst
@@ -1,19 +1,21 @@
 Default environment version 2
 =============================

-barebox has its environment files under /env/. Most of the runtime configuration
-takes place under /env/. The environment is comparable to a tar archive which is
-unpacked from a storage medium during startup. If for whatever reason the environment
-cannot be loaded from a storage medium, a compiled-in default environment is used
-instead.
+barebox stores its environment files under the top-level ``/env/``
+directory, where most of the runtime configuration scripts are located.
+This environment is comparable to a tar archive which is unpacked from
+a storage medium during startup. If for whatever reason the environment
+cannot be loaded from a storage medium, a compiled-in default environment
+is used instead.

 The environment is not automatically stored on the storage medium when a file
-under /env/ is changed, instead this has to be done manually using the
+under ``/env/`` is changed; rather, this has to be done manually using the
 :ref:`command_saveenv` command.

-There are two sets of generic environment files which can be used. The older one
-should not be used for new boards and is not described here. New boards should use
-defaultenv-2 instead.
+There are two sets of generic environment files which can be used. The older
+version (version one) should not be used for new boards and is not described here
+(even though there are still numerous board definitions that use it).
+All new boards should use defaultenv-2 exclusively.

 The default environment is composed from different directories during compilation::

@@ -25,27 +27,45 @@ The default environment is composed from different directories during compilatio
 The content of the above directories is applied one after another. If the
 same file exists in a later overlay, it will overwrite the preceding one.

+Note that not all of the above directories will necessarily be
+included in your default environment, it depends on your barebox
+configuration settings. You can see the configuration variables
+and their respective included directories in ``defaultenv/Makefile``::
+
+  bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW) += defaultenv-2-base
+  bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU) += defaultenv-2-menu
+  bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU) += defaultenv-2-dfu
+  bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-1
+
 /env/bin/init
 -------------

 This script is executed by the barebox startup code after initialization.
-In the defaultenv-2 it will add some global variables and executes the scripts
-in /env/init/. It is also responsible for printing the boot timeout prompt.
-Be careful with changes to this script: since it is executed before any user
+In defaultenv-2, this script will define and set a number of global
+variables, followed by sourcing all of the scripts in ``/env/init/`` with::
+
+  for i in /env/init/*; do
+          . $i
+  done
+
+This script is also responsible for defining the boot timeout value
+(by default, three seconds), then printing the timeout prompt for the user.
+Be careful making changes to this script: since it is executed before any user
 intervention, it might lock the system.

 /env/init/
 ----------

-/env/init/ is the place for startup scripts. The scripts in this directory
-will be executed in alphabetical order by the /env/bin/init script.
+The ``/env/init/`` directory is the location for startup scripts. The scripts
+in this directory will be executed in alphabetical order by the
+``/env/bin/init`` script described earlier.

 /env/boot/
 ----------

-/env/boot/ contains boot entry scripts. the :ref:`command_boot` command treats
-the files in this directory as possible boot targets. See :ref:`booting_linux`
-for more details.
+The ``/env/boot/`` directory contains boot entry scripts. The :ref:`command_boot`
+command treats the files in this directory as possible boot targets.
+See :ref:`booting_linux` for more details.

 /env/config
 -----------

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
